class WeekdayTimeSlot < ApplicationRecord

  belongs_to :weekday
  belongs_to :time_slot
  has_many :polygons
end