class PagesController < ApplicationController
  def home
    @planets = Planet.all
  end
end
