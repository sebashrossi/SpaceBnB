class PlanetsController < ApplicationController
  def index
    @planets = Planet.take(6)
  end

  def show
    @booking = Booking.new
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    if @planet.save!
      redirect_to planet_path(@planet)
    else
      render :new
    end
  end

  def update
    @planet = Planet.find(params[:id])
    @planet.update(planet_params)
    redirect_to planet_path(@planet)
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :price, :guest_limit, :address)
  end
end
