class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking)

    @upcoming_bookings = @bookings.joins(:event).where('events.date >= ?', Date.today).order('events.date ASC')
    @past_bookings = @bookings.joins(:event).where('events.date < ?', Date.new(2024, 5, 24)).order('events.date DESC')
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @event = Event.find(params[:event_id])
    @booking = Booking.new(event: @event)
    authorize @event
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
      redirect_to @event, alert: @booking.errors.full_messages.to_sentence
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
    params.require(:booking).permit(:event_id, :user_id, :confirmed, :number_of_tickets)
  end
end
