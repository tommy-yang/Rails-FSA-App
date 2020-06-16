class Delivery < ApplicationRecord

  validates :fsa, presence: true

  validates :city, presence: true

  validates :delivery_day, presence:true


  has_many :polygons

end
