class Place < ApplicationRecord
   
  geocoded_by :address
  before_validation :geocode, if: :address_changed?
  #before_save :geocode, if: :address_changed?
  
  validates :name, presence: true 

  validates :address, presence: true 

  validate :point_validation
  
  has_many :polygons


private
  
  def point_validation
    
    poly_array = Polygon.select("fsa_polygon @> point '(#{latitude}, #{longitude})' AS contained").map{ |p| p.contained }
    
    if !(valid_address = poly_array.include? true)
     errors.add(:address, "address does not fall into delivery zone")
    end

  end
end


#def point_validation
  #poly = Polygon.select("fsa_polygon @> point '(#{latitude}, #{longitude})' AS contained")
  #init=1
  #int = Polygon.all.count
  #valid_flag = false
  #while init <= int
    #if (poly.find(init).contained == true) 
      #valid_flag = true
      #break
    #end
    #init +=1
  #end
  #errors.add(:address, "does not fall into delivery zone") if valid_flag == false
#end

#end

#if ((poly.first.contained || poly.second.contained || poly.third.contained) != true) 
      #errors.add(:address, "does not fall into delivery zone")
   # end
