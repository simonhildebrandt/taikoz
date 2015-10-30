class ProductionsController < ApplicationController

  before_action :set_events_sidebar

  def index
    @productions = Production.all
  end

  def show
    @production = Production.friendly.find(params[:id])
  end
end
