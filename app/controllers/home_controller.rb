class HomeController < ApplicationController
  before_action :set_events_sidebar

  def index
    @posts = Post.order(created_at: :desc).published.first(2)
  end

end
