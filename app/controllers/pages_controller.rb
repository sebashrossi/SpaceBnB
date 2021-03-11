class PagesController < ApplicationController
  def home
    @planets = Planet.all
  end

  def dashboard
    @planets = current_user.planets
    @bookings = current_user.bookings
  end
end
