class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = Event.find(params[:event_id])

    if @booking.save
      redirect_to event_path(@booking.event), notice: "Booking created successfully!"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
