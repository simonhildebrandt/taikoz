class ProductionsController < ApplicationController

  before_action :set_events_sidebar

  def index
    @productions = Production.all
    @heading_text = "All Productions & Workshops"
    if params[:filter] == "mainstage"
      @productions = Production.mainstage
      @heading_text = "Mainstage Productions"
    elsif params[:filter] == "corporate"
      @productions = Production.corporate
      @heading_text = "Corporate Packages"
    elsif params[:filter] == "school_show"
      @productions = Production.school_show
      @heading_text = "School Shows"
    elsif params[:filter] == "school_workshop"
      @productions = Production.school_workshop
      @heading_text = "School Workshops"
    elsif params[:filter] == "school_all"
      @productions = Production.school_show || Production.school_workshop
      @heading_text = "All School Packages"
    end
  end

  def show
    @production = Production.friendly.find(params[:id])
  end
end
