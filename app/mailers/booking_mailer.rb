class BookingMailer < ApplicationMailer


  def booking_notification(booking_enquiry_id)
    @booking = BookingEnquiry.find(booking_enquiry_id)
    mail(to: 'companymanager@taikoz.com', subject: "Taikoz booking enquiry received from #{@booking.organisation_name} for #{@booking.event_date.strftime("%Y""-""%m""-""%d")}")
  end

  def booking_response(booking_enquiry_id)
    @booking = BookingEnquiry.find(booking_enquiry_id)
    mail(to: @booking.email, subject: "Thanks #{@booking.first_name}, your Taikoz booking enquiry has been sent")
  end

  def booking_to_trello(booking_enquiry_id)
    @booking = BookingEnquiry.find(booking_enquiry_id)
    mail(to: 'robcornish+9havhrr99mylpk3cmx7y@boards.trello.com', subject: "#{@booking.event_date.strftime("%Y""-""%m""-""%d")} - #{@booking.organisation_name}")
  end


end
