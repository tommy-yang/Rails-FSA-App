class CreateWeekdays < ActiveRecord::Migration[5.2]
  def change
    create_table :weekdays do |t|
      t.string :day

      t.timestamps
    end
  end
end
