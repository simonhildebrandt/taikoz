class HomeController < ApplicationController

  def index
    @posts = Post.last(1)
  end

end
