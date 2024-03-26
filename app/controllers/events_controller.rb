class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def index
    @events = Event.all
  end

  def home
    @events = Event.where(date: Date.today..(Date.today + 7))
  end

  def show
    @event = Event.find(params[:id])
    # @venue = Venue.find(params[:id])
  end

  def edit
  @event = Event.find(params[:id])
  end

  def update
  @event = Event.find(params[:id])
  @event.update(event_params)
  redirect_to edit_event_path(@event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path, status: :see_other
  end

private

  def event_params
    params.require(:event).permit(:name, :description, :date, :price, :category)
  end
end
