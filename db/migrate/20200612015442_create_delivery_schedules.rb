class CreateDeliverySchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_schedules do |t|
      t.string :fsa
      t.string :city
      t.string :delivery_day

      t.timestamps
    end
  end
end
