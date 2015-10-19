class HomeController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).published.first(2)
    @events = Event.order(start_date: :asc).current_events.limit(2)
  end

end
