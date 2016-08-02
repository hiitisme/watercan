class AddPicToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :pic, :binary
  end
end
