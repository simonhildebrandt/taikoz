class BookingMailer < ApplicationMailer


  def booking_notification(booking_enquiry_id)
    @booking = BookingEnquiry.find(booking_enquiry_id)
    mail(to: 'companymanager@taikoz.com', subject: 'Taikoz booking enquiry received')
  end

  def booking_response(booking_enquiry_id)
    @booking = BookingEnquiry.find(booking_enquiry_id)
    mail(to: @booking.email, subject: 'You Taikoz booking enquiry has been sent')
  end

end
