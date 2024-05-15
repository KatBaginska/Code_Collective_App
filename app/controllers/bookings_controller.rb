class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @booking = Booking.new(event: @event)
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @event = Event.find(params[:event_id])
    @booking.event = @event

    if @booking.save
      redirect_to booking_path(@booking)
    else
      puts @booking.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      redirect_to bookings_path, notice: 'Booking has been removed'
    else
      redirect_to bookings_path, alert: 'Failed to remove booking'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id, :user_id, :confirmed)
  end
end
