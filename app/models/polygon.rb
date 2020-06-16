class Polygon < ApplicationRecord
    
  validates :fsa, presence: true

  validates :fsa_polygon, presence: true

  belongs_to :delivery
end
