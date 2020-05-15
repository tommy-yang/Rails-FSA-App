class CreateShapes < ActiveRecord::Migration[5.2]
  def change
    create_table :shapes do |t|
      t.string :fsa
      t.string :point_one_x
      t.string :point_one_y
      t.string :point_two_x
      t.string :point_two_y
      t.string :point_three_x
      t.string :point_three_y
      t.string :point_four_x
      t.string :point_four_y

      t.timestamps
    end
  end
end
