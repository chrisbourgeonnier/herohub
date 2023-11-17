class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  end

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def service_params
    params.require(:service).permit(:superhero_name, :photo, :race, :team, :powers, :bio, :fee)
  end
end
