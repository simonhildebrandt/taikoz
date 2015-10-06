class HomeController < ApplicationController

  def index
    @posts = Post.last(2)
    @events = Event.last(3)
  end

end
