class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
