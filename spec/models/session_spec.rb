require 'rails_helper'

RSpec.describe Session, type: :model do
  it "copies start date to the end date if end date not present" do
    session = Session.new(start_date: DateTime.new(2000, 1, 1), venue: "Riverside")
    event = Event.create!(sessions: [ session ], name: "Gig")
    session.reload
    expect(session.end_date).to eq(session.start_date)
  end
  it "doesn't overwite the end date if end date specified" do
    session = Session.new(start_date: DateTime.new(2000, 1, 1), end_date: DateTime.new(2001, 1, 1), venue: "Riverside")
    event = Event.create!(sessions: [ session ], name: "Gig")
    session.reload
    expect(session.end_date).to eq(DateTime.new(2001, 1, 1))
  end
end
