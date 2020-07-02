class Polygon < ApplicationRecord
    
  validates :fsa, presence: true, uniqueness: true

  validates :fsa_polygon, presence: true

  belongs_to :weekday_time_slot
end
