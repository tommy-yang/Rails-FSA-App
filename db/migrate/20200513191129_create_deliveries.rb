class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :name
      t.string :postal_code
      t.float :longitude
      t.float :latitude
      t.st_point :coordinates, srid: 4326, geographic: true
      t.jsonb :geojson

      t.timestamps
    end
    add_index :deliveries, :coordinates, using: :gist
  end
end
