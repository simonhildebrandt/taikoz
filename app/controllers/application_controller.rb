class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_events_sidebar
    @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end
end
