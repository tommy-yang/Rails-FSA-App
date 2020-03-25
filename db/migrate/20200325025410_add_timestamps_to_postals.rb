class AddTimestampsToPostals < ActiveRecord::Migration[5.2]
  def change
    add_column :postals, :created_at, :datetime
    add_column :postals, :updated_at, :datetime
  end
end
