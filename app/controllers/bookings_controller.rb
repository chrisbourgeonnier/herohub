class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @service = Service.find(params[:service_id])
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.total_price = @service.fee
    @booking.user = current_user
    if @booking.save
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location, :comments)
  end
end
