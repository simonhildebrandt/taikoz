require 'rails_helper'

RSpec.describe "booking_enquiries/edit", type: :view do
  before(:each) do
    @booking_enquiry = assign(:booking_enquiry, BookingEnquiry.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :organisation_name => "MyString",
      :event_location => "MyString",
      :event_type => "MyString",
      :performance_requirments => "MyText",
      :expected_attendance => 1,
      :budget => "MyString",
      :access_details => "MyText",
      :parking_details => "MyText"
    ))
  end

  it "renders the edit booking_enquiry form" do
    render

    assert_select "form[action=?][method=?]", booking_enquiry_path(@booking_enquiry), "post" do

      assert_select "input#booking_enquiry_first_name[name=?]", "booking_enquiry[first_name]"

      assert_select "input#booking_enquiry_last_name[name=?]", "booking_enquiry[last_name]"

      assert_select "input#booking_enquiry_phone[name=?]", "booking_enquiry[phone]"

      assert_select "input#booking_enquiry_email[name=?]", "booking_enquiry[email]"

      assert_select "input#booking_enquiry_organisation_name[name=?]", "booking_enquiry[organisation_name]"

      assert_select "input#booking_enquiry_event_location[name=?]", "booking_enquiry[event_location]"

      assert_select "input#booking_enquiry_event_type[name=?]", "booking_enquiry[event_type]"

      assert_select "textarea#booking_enquiry_performance_requirments[name=?]", "booking_enquiry[performance_requirments]"

      assert_select "input#booking_enquiry_expected_attendance[name=?]", "booking_enquiry[expected_attendance]"

      assert_select "input#booking_enquiry_budget[name=?]", "booking_enquiry[budget]"

      assert_select "textarea#booking_enquiry_access_details[name=?]", "booking_enquiry[access_details]"

      assert_select "textarea#booking_enquiry_parking_details[name=?]", "booking_enquiry[parking_details]"
    end
  end
end
