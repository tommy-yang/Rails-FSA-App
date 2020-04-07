class AddFsaIdToPostals < ActiveRecord::Migration[5.2]
  def change
    add_column :postals, :fsa_id, :string
    add_column :postals, :fsa_fsacode, :string
  end
end
