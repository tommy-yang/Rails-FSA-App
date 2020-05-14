# Delivery App

## Table of Contents
1. [PostGIS](#postgis)
1. [Services](#services)
1. [Javascript](#javascript)
1. [Recommendations](#recommendations)

## PostGIS
To enable the PostGIS adapter, you may need to run the following:
```bash
rake db:gis:setup
```

## Services
Plain Old Ruby Objects (PORO) located under `/services`. These can be called from anywhere.  

`Geographical::Point`
* This casts the coordinates for PostGIS.

`Geographical::Geometry`
* This casts the geometry for PostGIS.

## Javascript
A small script is located in `deliveries.js` that receives the response from the backend, and populates the form.


## Recommendations
* Rubocop for ruby lint
* ESLint for javascript lint
* Stimulus, Vue, or React for managing state
