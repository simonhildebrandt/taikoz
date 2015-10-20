class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
    @posts = Post.paginate(page: params[:page], per_page: 6).published
    @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end

  def show
    @events = Event.order(start_date: :asc).current_events.published.limit(2)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end
end
