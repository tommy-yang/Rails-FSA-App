class CreatePostals < ActiveRecord::Migration[5.2]
  def change
    create_table :postals do |t|
      t.string :postalcode
      
    end
  end
end
