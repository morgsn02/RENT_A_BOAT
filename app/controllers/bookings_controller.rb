class BookingsController < ApplicationController
  before_action :set_booking, only: [ :edit, :update, :destroy, :show]

  def show

  end

  def new
    @booking = Booking.new
  end

  def create
    @boat = Boat.find([:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat

    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def my_bookings
    @my_bookings = Booking.where(user_id: current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:date_start, :date_end, :city)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
