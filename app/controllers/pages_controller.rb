class PagesController < ApplicationController
  def home
    @planets = Planet.all
  end

  def dashboard
    @planets = current_user.planets
    @bookings = current_user.bookings
    @booked_planets = @planets.reject { |planet| planet.bookings.empty? }
  end
end
