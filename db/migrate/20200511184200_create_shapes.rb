class CreateShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :shapes do |t|
      t.string :fsa
      t.string :btm_left_x
      t.string :btm_left_y
      t.string :btm_right_x
      t.string :btm_right_y
      t.string :top_right_x
      t.string :top_right_y
      t.string :top_left_x
      t.string :top_left_y
      t.string :polygon
      t.string :point

      t.timestamps
    end
  end
end
