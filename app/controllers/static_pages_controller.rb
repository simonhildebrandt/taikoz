class StaticPagesController < ApplicationController
  before_action :sidebar

  def privacy_policy
  end

  def about
  end

  def donors
  end

private

  def sidebar
    @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end

end
