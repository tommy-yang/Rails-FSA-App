module Geographical
  class Point
    include Service

    def initialize(params)
      @longitude = params[:longitude].to_f
      @latitude = params[:latitude].to_f
      @factory = RGeo::Cartesian.preferred_factory(srid: 4326)
    end

    def call
      create_coordinate
    rescue StandardError => e
      Rails.logger.error(e)
    end

    private

    def create_coordinate
      @factory.point(@longitude, @latitude)
    end
  end
end
