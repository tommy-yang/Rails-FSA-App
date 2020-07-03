class Place < ApplicationRecord
   
  geocoded_by :address
  
  before_validation :geocode, if: :address_changed?
  
  validates :name, presence: true 

  validates :address, presence: true
  
  validate :point_validation

  has_many :polygons

private
  
  def point_validation
    
    poly_array = Polygon.select("fsa_polygon @> point '(#{latitude}, #{longitude})' AS contained").map{ |p| p.contained }

    if !(valid_address = poly_array.include? true)
      errors.add(:address, "does not fall into delivery zone")
    end

  end

end

