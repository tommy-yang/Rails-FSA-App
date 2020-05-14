# Delivery App

## Table of Contents
1. [PostGIS](#postgis)
1. [Controllers](#controllers)
1. [Services](#services)
1. [Javascript](#javascript)
1. [Rspec](#rspec)
1. [Recommendations](#recommendations)

## PostGIS
Make sure you run the migrations (you may need to re-create the db):
```bash
rails db:drop db:create db:migrate
```
To enable the PostGIS adapter (you may need to run the following):
```bash
rake db:gis:setup
```

## Controllers
The `DeliveriesController` is where it is determined if the point is within the bounding box:
```ruby
def within
  point.within?(geometry)
end
```

## Services
Plain Old Ruby Objects (PORO) located under `/services`. These can be called from anywhere.  

`Geographical::Point`
* This casts the coordinates for PostGIS.

`Geographical::Geometry`
* This casts the geometry for PostGIS.

## Rspec
There are integration tests for both services.
```bash
rspec spec/services/geographical/geometry_spec.rb
rspec spec/services/geographical/point_spec.rb
```

## Javascript
A small script is located in `deliveries.js` that receives the response from the backend, and populates the form.

## Recommendations
* Rubocop for ruby lint
* ESLint for javascript lint
* Stimulus, Vue, or React for managing state
