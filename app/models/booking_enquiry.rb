class BookingEnquiry < ActiveRecord::Base
  validates :first_name, :organisation_name, :email, presence: true
end
