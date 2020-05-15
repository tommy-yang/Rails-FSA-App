class Postal < ApplicationRecord
    
  scope :active_postals, -> {where(active: true)}
  scope :inactive_postals, -> {where(active: false)}
   
  validates :postalcode, presence: true, length: {minimum: 6, maximum: 6},  format: { with: /\A^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$\z/}

  validate :point_in_polygon
  #validate :code_starts_with 
   
#private
    #def code_starts_with
        
     # if !postalcode.start_with?(*Fsa.all.pluck(:fsacode))
       # errors.add(:postalcode, "does not fall into Richmond")
     # end
   # end
     
    def point_in_polygon
      polygon = Geokit::Polygon.new([Geokit::LatLng.new(*Shape.all.pluck(:point_one_x), *Shape.all.pluck(:point_one_y)),
        Geokit::LatLng.new(*Shape.all.pluck(:point_two_x), *Shape.all.pluck(:point_two_y)),
        Geokit::LatLng.new(*Shape.all.pluck(:point_three_x), *Shape.all.pluck(:point_three_y)),
        Geokit::LatLng.new(*Shape.all.pluck(:point_four_x), *Shape.all.pluck(:point_four_y))
       ])
       
       point = Geokit::LatLng.new(*Place.all.pluck(:latitude),*Place.all.pluck(:longitude))
      if !polygon.contains?(point)
        errors.add(:postalcode, "Address does not fall into delivery zone")

      end
    end

end
 # belongs_to :fsa