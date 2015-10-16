class HomeController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).first(2)
    @events = Event.last(2)
  end

end
