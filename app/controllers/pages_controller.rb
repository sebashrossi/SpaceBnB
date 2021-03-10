class PagesController < ApplicationController
  def home
    @planets = Planet.all
  end

  def results
    if params[:search].blank?
      redirect_to root_path
    else
      @params = params[:search]
      @results = Planet.all.where('name LIKE :search', search: @params)
    end
  end
end
