class CreateWeekdayTimeSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :weekday_time_slots do |t|
      t.integer :weekday_id
      t.integer :time_slot_id
    end
  end
end
