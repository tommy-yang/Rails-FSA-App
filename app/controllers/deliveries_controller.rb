class DeliveriesController < ApplicationController
  def index
  end

  def show
  end

  def create
    @delivery = Delivery.new
    @delivery.assign_attributes(coordinates: point)

    return unless @delivery.save

    respond_to do |format|
      format.json { render json: details }
    end    
  end

  def update
  end  

  def destroy
  end

  private

  def details
    { point: point, geometry: geometry, within: within }
  end

  def within
    point.within?(geometry)
  end

  def point
    @point ||= Geographical::Point.call(permitted_params)
  end

  def geometry
    @geometry ||= Geographical::Geometry.call(permitted_params)
  end

  def permitted_params
    params.require(:delivery).permit(
      :longitude, 
      :latitude, 
      :sw_lon, 
      :sw_lat, 
      :ne_lon, 
      :ne_lat
    )
  end
end
