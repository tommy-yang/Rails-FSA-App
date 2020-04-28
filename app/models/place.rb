class Place < ApplicationRecord
   
    geocoded_by :address
    after_validation :geocode, if: :address_changed?

    validates :name, presence: true 

    validates :address, presence: true 
   
    validates_uniqueness_of :address



end
