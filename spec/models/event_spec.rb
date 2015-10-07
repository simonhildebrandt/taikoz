require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:all) do
    event = Event.create!(name: "SPEC")
    event.session = Session.create!
  end

  it "creates an event entry" do
    expect(event).not_to be_nil
  end

end
