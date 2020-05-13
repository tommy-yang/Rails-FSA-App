class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.string :zone
      t.string :postal_code
      t.float :longitude
      t.float :latitude
      t.st_point :coordinates, srid: 4326, geographic: true
      t.geometry :geometry, srid: 4326
      t.jsonb :geojson

      t.timestamps
    end
    add_index :deliveries, :coordinates, using: :gist
    add_index :deliveries, :geometry, using: :gist
  end
end
