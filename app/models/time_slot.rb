class TimeSlot < ApplicationRecord

  has_many :weekday_time_slots
  has_many :weekday, through: :weekday_time_slots
end
