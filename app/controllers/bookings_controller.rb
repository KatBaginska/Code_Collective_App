class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @event = Event.find(params[:event_id])
    @booking = Booking.new(event: @event)
    authorize @booking
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @event = Event.find(params[:event_id])
    @booking.event = @event
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      puts @booking.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.user == current_user
      @booking.destroy
      redirect_to bookings_path, notice: 'Booking has been removed'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:event_id, :user_id, :confirmed)
  end
end
