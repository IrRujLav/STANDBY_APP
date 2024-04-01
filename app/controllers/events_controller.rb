class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    if params[:category]
      @events = Event.where(category: params[:category])
    else
      @events = Event.all
    end
  end

  def home
    @events = Event.where(date: Date.today..(Date.today + 7))
  end

  def show
    @event = Event.find(params[:id])
    @venue = @event.venue
    @event_image = @event.image
  end

  def new
    @event = Event.new
    @venues = Venue.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :date, :time, :price, :venue_id, :category, photos: [])
  end
end
