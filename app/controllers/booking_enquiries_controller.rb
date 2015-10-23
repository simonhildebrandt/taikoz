class BookingEnquiriesController < ApplicationController
  before_action :set_booking_enquiry, only: [:show, :edit, :update, :destroy]
  before_action :set_events_sidebar

  def index
    @booking_enquiry = BookingEnquiry.all
    # @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end

  def edit
    # @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end

  # GET /booking_enquiries/1
  # GET /booking_enquiries/1.json
  def show
    @booking
    # @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end

  # GET /booking_enquiries/new
  def new
    @booking_enquiry = BookingEnquiry.new
    # @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end


  # POST /booking_enquiries
  # POST /booking_enquiries.json
  def create
    @booking_enquiry = BookingEnquiry.new(booking_enquiry_params)

    respond_to do |format|
      if @booking_enquiry.save
        BookingMailer.booking_response(@booking_enquiry.id).deliver_now
        BookingMailer.booking_notification(@booking_enquiry.id).deliver_now
        format.html { redirect_to @booking_enquiry, notice: 'Booking enquiry was successfully created.' }
        format.json { render :show, status: :created, location: @booking_enquiry }
      else
        format.html { render :new }
        format.json { render json: @booking_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_enquiries/1
  # PATCH/PUT /booking_enquiries/1.json
  def update
    respond_to do |format|
      if @booking_enquiry.update(booking_enquiry_params)
        format.html { redirect_to @booking_enquiry, notice: 'Booking enquiry was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking_enquiry }
      else
        format.html { render :edit }
        format.json { render json: @booking_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_enquiries/1
  # DELETE /booking_enquiries/1.json
  def destroy
    @booking_enquiry.destroy
    respond_to do |format|
      format.html { redirect_to booking_enquiries_url, notice: 'Booking enquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_enquiry
      @booking_enquiry = BookingEnquiry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_enquiry_params
      params.require(:booking_enquiry).permit(:first_name, :last_name, :phone, :email, :organisation_name, :event_date, :event_time, :event_location, :event_type, :performance_requirments, :expected_attendance, :budget, :access_details, :parking_details)
    end
end
