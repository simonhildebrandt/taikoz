require 'rails_helper'

RSpec.describe "booking_enquiries/show", type: :view do
  before(:each) do
    @booking_enquiry = assign(:booking_enquiry, BookingEnquiry.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Organisation Name/)
    expect(rendered).to match(/Event Location/)
    expect(rendered).to match(/Event Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Budget/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
