module Geographical
  class Geometry
    include Service

    def initialize(params)
      @sw_lon = params[:sw_lon].to_f
      @sw_lat = params[:sw_lat].to_f
      @ne_lon = params[:ne_lon].to_f
      @ne_lat = params[:ne_lat].to_f      
      @factory = RGeo::Cartesian.preferred_factory(srid: 4326)
      @bounding_box = RGeo::Cartesian::BoundingBox
    end

    def call
      create_geography
    rescue StandardError => e
      Rails.logger.error(e)
    end

    private

    def create_geography
      sw = @factory.point(@sw_lon, @sw_lat)
      ne = @factory.point(@ne_lon, @ne_lat)
      
      @bounding_box.create_from_points(sw, ne).to_geometry
    end
  end
end
