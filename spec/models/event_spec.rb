require 'rails_helper'

RSpec.describe Event, type: :model do
  it "caches session start and end date onto the event" do
    session = Session.new(start_date: DateTime.new(2000, 1, 1), end_date: DateTime.new(2001, 1, 1), venue: "Riverside")
    event = Event.create!(sessions: [ session ], name: "Gig")
    event.reload
    expect(event.start_date).to eq (session.start_date)
    expect(event.end_date).to eq (session.end_date)
  end

end
