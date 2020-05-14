class Zone < ApplicationRecord
  validates :sw_lon, :sw_lat, :ne_lon, :ne_lat, presence: true
end
