module Geographical
  class Point
    include Service

    def initialize(params)
      @longitude = params[:longitude].to_f
      @latitude = params[:latitude].to_f
    end

    def call
      create_coordinate
    rescue StandardError => e
      Rails.logger.error(e)
    end

    private

    def create_coordinate
      flat_coordinate = RGeo::Cartesian.preferred_factory(srid: 4326)
      coordinates = flat_coordinate.point(@longitude, @latitude)
    end
  end
end
