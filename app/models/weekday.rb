class Weekday < ApplicationRecord

    has_many :weekday_time_slots
    has_many :time_slots, through: :weekday_time_slots
end
