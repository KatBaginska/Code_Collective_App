class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @user = User.find(params[:id])
    @created_events = @user.events # Events created by the user
    booked_events = @user.bookings
    @user_bookings = booked_events.map do |booking|
      booking.event
    end
    @calendar_events = @created_events + @user_bookings
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :photo, :first_name, :last_name, :password)
  end
end
