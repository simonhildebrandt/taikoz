class HomeController < ApplicationController

  def index
    @posts = Post.last(2)
    @events = Event.last(2)
  end

end
