class EventsController < ApplicationController
  before_action :set_event, only: [:show]

  def index
    @events = Event.paginate(page: params[:page], per_page: 6)
    @events = @events.order(start_date: :desc).past_events if params[:filter] == 'past'
    @events = @events.order(start_date: :asc).current_events if params[:filter] == nil
    # @events = @events.order(start_date: :desc) if params[:filter] == 'current'
  end

  def show
    @sessions = @event.sessions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.friendly.find(params[:id])
    end

end
