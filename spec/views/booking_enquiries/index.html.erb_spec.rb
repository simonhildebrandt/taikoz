require 'rails_helper'

RSpec.describe "booking_enquiries/index", type: :view do
  before(:each) do
    assign(:booking_enquiries, [
      BookingEnquiry.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :email => "Email",
        :organisation_name => "Organisation Name",
        :event_location => "Event Location",
        :event_type => "Event Type",
        :performance_requirments => "MyText",
        :expected_attendance => 1,
        :budget => "Budget",
        :access_details => "MyText",
        :parking_details => "MyText"
      ),
      BookingEnquiry.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :phone => "Phone",
        :email => "Email",
        :organisation_name => "Organisation Name",
        :event_location => "Event Location",
        :event_type => "Event Type",
        :performance_requirments => "MyText",
        :expected_attendance => 1,
        :budget => "Budget",
        :access_details => "MyText",
        :parking_details => "MyText"
      )
    ])
  end

  it "renders a list of booking_enquiries" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Organisation Name".to_s, :count => 2
    assert_select "tr>td", :text => "Event Location".to_s, :count => 2
    assert_select "tr>td", :text => "Event Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Budget".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
