class ServicesController < ApplicationController
  def show
    @service = {
      superhero_name: "Omni-Man"
    }
    # @service = Service.find(params[:id])
  end
end
