class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

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

      redirect_to bookings_path, notice: "Booking request sent!"
     # redirect_to service_path(@service), notice: "Booking request sent!"
    else
      render "services/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path, status: :see_other, notice: "Booking successfully deleted!"
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location, :comments)
  end
end
