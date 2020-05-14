class CreateZones < ActiveRecord::Migration[5.2]
  def change
    create_table :zones do |t|
      t.string :name
      t.st_point :sw_lon, srid: 4326, geographic: true
      t.st_point :sw_lat, srid: 4326, geographic: true
      t.st_point :ne_lon, srid: 4326, geographic: true
      t.st_point :ne_lat, srid: 4326, geographic: true
      t.geometry :geometry, srid: 4326
      t.jsonb :geojson

      t.timestamps
    end
    add_index :zones, :sw_lon, using: :gist
    add_index :zones, :sw_lat, using: :gist
    add_index :zones, :ne_lon, using: :gist
    add_index :zones, :ne_lat, using: :gist
    add_index :zones, :geometry, using: :gist
  end
end
