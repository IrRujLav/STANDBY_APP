class EventsController < ApplicationController
def index
@events = Event.all
end

def home
@events = Event.where(date: Date.today)
end
# def show
# @event = Event.find(params[:id])

# end

# def new
# @event = Event.new
# end

# def create
# @event = Event.new(event_params)
# if @event.save
# redirect_to event_path(@event)
# else
# render :new, status: :unprocessable_entity
# end
# end

# def edit
# @event = Event.find(params[:id])
# end

# def update
# @event = Event.find(params[:id])
# @event.update(params[:event])
# redirect_to event_path(@event)
# end


# def destroy
#   @event = Event.find(params[:id])
#   @event.destroy
#   redirect_to events_path, status: :see_other
# end


# private

# def event_params
#   params.require(:event).permit(:name, :description, :date, :price, :category)
# end
end