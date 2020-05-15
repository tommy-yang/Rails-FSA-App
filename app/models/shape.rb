class Shape < ApplicationRecord

    validates :fsa, presence: true
    validates :point_one_x, presence: true
    validates :point_one_y, presence: true
    validates :point_two_x, presence: true
    validates :point_two_y, presence: true
    validates :point_three_x, presence: true
    validates :point_three_y, presence: true
    validates :point_four_x, presence: true
    validates :point_four_y, presence: true



private 

  def point_polygon
    polygon = Geokit::Polygon.new([Geokit::LatLng.new(test.point_one_x, test.point_one_y),
        Geokit::LatLng.new(test.point_two_x, test.point_two_y),
        Geokit::LatLng.new(test.point_three_x, test.point_three_y),
        Geokit::LatLng.new(test.point_four_x, test.point_four_y)
       ])
    point = Geokit::LatLng.new(Place.find(2).latitude,Place.find(2).longitude)
    polygon.contains?(point)

  end
    
end
