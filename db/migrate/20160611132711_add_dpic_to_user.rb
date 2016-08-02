class AddDpicToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dpic, :string
  end
end
