class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_events_sidebar

  def index
    @posts = Post.order(published_at: :desc).paginate(page: params[:page], per_page: 6).published
  end

  def show

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end
end
