class CreatePolygons < ActiveRecord::Migration[5.2]
  def change
    create_table :polygons do |t|
      t.string :fsa
      t.polygon :fsa_polygon

      t.timestamps
    end
  end
end
