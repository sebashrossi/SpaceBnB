class PagesController < ApplicationController
  def home
    @planets = Planet.all
  end

  def dashboard
    @planets = current_user.planets
  end
end
