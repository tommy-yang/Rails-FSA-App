class CreateFsas < ActiveRecord::Migration[5.2]
  def change
    create_table :fsas do |t|
      t.string :fsacode

      t.timestamps
    end
  end
end
