class CreateTimeSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :time_slots do |t|
      t.string :time
      t.integer :duration

      t.timestamps
    end
  end
end
