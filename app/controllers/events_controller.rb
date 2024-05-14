class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end
end

private

def event_params
  params.require(:event).permit(:name, :description, :date, :location, :time, :start_time, :end_time, :keywords, photos: [])
end
