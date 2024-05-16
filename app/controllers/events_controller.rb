class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @events = Event.search_by_details(params[:query])
    else
      @events = Event.all
    end
    authorize @events
  end

  def show
    @event = Event.find(params[:id])
    @chatroom = @event.chatroom
    authorize @event
    @markers =
    [{
      lat: @event.latitude,
      lng: @event.longitude
    }]
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to event_path(@event)
    else
      puts @event.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
    authorize @event
  end

  def update
    @event = Event.find(params[:id])
    authorize @event
    if @event.update(event_params)
      redirect_to @event, notice: 'Updated Succesfully!'
    else
      render :edit
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :start_time, :end_time, :keywords, photos: [])
  end
end
