class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :fsa
      t.string :city
      t.string :delivery_day

      t.timestamps
    end
  end
end
