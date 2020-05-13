class Delivery < ApplicationRecord
  validates :longitude, :latitude, presence: true
end
