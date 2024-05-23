class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :destroy]

  def index
    @events = Event.all

    if params[:query].present? || params[:tag].present?
      @tags = ActsAsTaggableOn::Tagging.where(taggable_type: "Event").map { |tagging| tagging.tag }.uniq
      @events = Event.tagged_with(params[:tag]) if params[:tag].present? && params[:tags] != [""]
      @events = Event.search_by_details(params[:query]) if params[:query].present? && params[:query] != [""]
      @upcoming_events = @events.where('date >= ?', Date.new(2024, 5, 27)).order('date ASC')
      @past_events = @events.where('date < ?', Date.new(2024, 5, 27)).order('date DESC')
      @query = params[:query]

    else
      @upcoming_events = @events.where('date >= ?', Date.new(2024, 6, 22)).order('date ASC')
      @past_events = @events.where('date < ?', Date.new(2024, 6, 22)).order('date DESC')
    end
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
      @chatroom = Chatroom.new
      @chatroom.event = @event
      @chatroom.save
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
      redirect_to @event, notice: 'Updated Successfully!'
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    authorize @event
    if @event.destroy
      redirect_to events_path, notice: 'Event was successfully deleted.'
    else
      redirect_to events_path, alert: 'You are not authorized to delete this event.'
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :location, :date, :start_time, :end_time, :keywords, photos: [])
  end
end
