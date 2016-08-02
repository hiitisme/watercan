class ChangeTypePhoneInUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :phone, :bigint
  end
end
