# README

## Table of Contents
1. [Deliveries](#deliveries)

## Deliveries
To enable the PostGIS adapter, you may need to run the following:
```bash
rake db:gis:setup
```

### Service
There is a `Geographical::Point` service under `/services`:
```ruby
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
```
This casts the coordinates for PostGIS.

### Javascript
> "I suggest you look into stimulus, vue, or react for managing state"

A small script is located in `deliveries.js` that takes the input from the form and sends it to the backend.
