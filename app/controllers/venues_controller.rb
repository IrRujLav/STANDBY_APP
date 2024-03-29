class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end


  def new
    @venue = Venue.new
    @events = Event.all
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
    redirect_to venues_path
    else
    render :new, status: :unprocessable_entity
  end
end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    @venue.update(venue_params)
    redirect_to venues_path
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to venues_path
end

private

  def venue_params
    params.require(:venue).permit(:name, :image, :location, :category)

  def show
    @venue = Venue.find(params[:id])
    @events = Event.all
  end

end
