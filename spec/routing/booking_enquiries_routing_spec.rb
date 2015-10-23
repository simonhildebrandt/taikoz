require "rails_helper"

RSpec.describe BookingEnquiriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/booking_enquiries").to route_to("booking_enquiries#index")
    end

    it "routes to #new" do
      expect(:get => "/booking_enquiries/new").to route_to("booking_enquiries#new")
    end

    it "routes to #show" do
      expect(:get => "/booking_enquiries/1").to route_to("booking_enquiries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/booking_enquiries/1/edit").to route_to("booking_enquiries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/booking_enquiries").to route_to("booking_enquiries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/booking_enquiries/1").to route_to("booking_enquiries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/booking_enquiries/1").to route_to("booking_enquiries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/booking_enquiries/1").to route_to("booking_enquiries#destroy", :id => "1")
    end

  end
end
