class ProductionsController < ApplicationController

  before_action :set_events_sidebar

  def index
    @productions = Production.all.order(name: :asc)
    @heading_text = "All Productions & Workshops"
    if params[:filter] == "mainstage"
      @productions = Production.mainstage.order(name: :asc)
      @heading_text = "Mainstage Productions"
    elsif params[:filter] == "corporate"
      @productions = Production.corporate.order(name: :asc)
      @heading_text = "Corporate Packages"
    elsif params[:filter] == "school_show"
      @productions = Production.school_show.order(name: :asc)
      @heading_text = "School Shows"
    elsif params[:filter] == "school_workshop"
      @productions = Production.school_workshop.order(name: :asc)
      @heading_text = "School Workshops"
    elsif params[:filter] == "school_all"
      @productions = Production.all_schools
      @heading_text = "All School Packages"
    end
  end

  def show
    @production = Production.friendly.find(params[:id])
  end
end
