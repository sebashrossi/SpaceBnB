class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @planets = Planet.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.planet_id = params[:planet_id]
    @booking.user_id = current_user.id
    @booking.status = 'Pending'
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :show
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    if params[:booking][:status].present?
    params.require(:booking).permit(:status)
    else
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests)
    end
  end
end
