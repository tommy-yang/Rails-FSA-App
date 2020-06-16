class AddDeliveryIdToPolygons < ActiveRecord::Migration[5.2]
  def change
    add_column :polygons, :delivery_id, :int
  end
end
