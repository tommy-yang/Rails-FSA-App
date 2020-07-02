class AddWeekdayTimeSlotIdToPolygons < ActiveRecord::Migration[5.2]
  def change

    add_column :polygons, :weekday_time_slot_id, :int
  end
end
