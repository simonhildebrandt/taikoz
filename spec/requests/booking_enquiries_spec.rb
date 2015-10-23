require 'rails_helper'

RSpec.describe "BookingEnquiries", type: :request do
  describe "GET /booking_enquiries" do
    it "works! (now write some real specs)" do
      get booking_enquiries_path
      expect(response).to have_http_status(200)
    end
  end
end
