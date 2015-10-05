class EventsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @events = Event.all
  end

  def show
    @sessions = @event.sessions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @event = Event.find(params[:id])
    end
end
