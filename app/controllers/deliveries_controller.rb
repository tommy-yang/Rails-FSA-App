class DeliveriesController < ApplicationController
  def index
  end

  def show
  end

  def create
    @point = Geographical::Point.call(permitted_params)

    respond_to do |format|
      format.json { render json: { point: @point } }
    end    
  end

  def update
  end  

  def destroy
  end

  private

  def permitted_params
    params.require(:deliveries).permit(:longitude, :latitude)
  end
end
