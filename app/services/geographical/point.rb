module Geographical
  class Point
    include Service

    def initialize(**args)
      @record = args
    end

    def call
      create_coordinate
    rescue StandardError => e
      Rails.logger.error(e)
    end

    private

    def create_coordinate
      flat_coordinate = RGeo::Cartesian.preferred_factory(srid: 4326)
      coordinates = flat_coordinate.point(longitude, latitude)
    end
  end
end
