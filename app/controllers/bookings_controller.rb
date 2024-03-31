class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
    if @event
      @booking.event = @event
      set_paid_price
    else
      flash[:alert] = "Event not found"
      render :new
    end
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.event = Event.find(params[:event_id])
    set_paid_price

    # Set a default status if it's nil( temporary solution, in future:
    # 1.solusion staus is dependent on paymant(waithing, confirmed, cancled),
    # 2.solusion status is dependent on ovner).
    @booking.status = 'confirmed'

    if @booking.save
      flash[:notice] = "Booking created successfully!"
      redirect_to event_path(@booking.event) # TODO: change redirect to booking show page or booking index page
    else
      flash.now[:alert] = "Booking failed to create!"
      render :new
    end
  end

  private

  def set_paid_price
    if @booking.event.discounts.any? && @booking.event.discounts.last.try(:new_price)
      @booking.paid_price = @booking.event.price - @booking.event.discounts.last.try(:new_price)
    else
      @booking.paid_price = @booking.event.price
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :other, :params)
  end
end
