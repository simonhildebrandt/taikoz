class ProductionsController < ApplicationController

  before_action :set_events_sidebar

  def index
    @productions = Production.all
    @productions = Production.mainstage if params[:filter] == "mainstage"
    @productions = Production.corporate if params[:filter] == "corporate"
    @productions = Production.school_show if params[:filter] == "school_show"
    @productions = Production.school_workshop if params[:filter] == "school_workshop"
    @productions = Production.school_show || Production.school_workshop if params[:filter] == "school_all"
  end

  def show
    @production = Production.friendly.find(params[:id])
  end
end
