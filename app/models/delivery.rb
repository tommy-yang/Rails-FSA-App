class Delivery < ApplicationRecord
  validates :coordinates, presence: true, uniqueness: true
end
