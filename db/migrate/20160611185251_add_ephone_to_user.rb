class AddEphoneToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :bigint
  end
end
