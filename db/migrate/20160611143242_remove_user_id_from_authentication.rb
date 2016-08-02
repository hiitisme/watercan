class RemoveUserIdFromAuthentication < ActiveRecord::Migration[5.0]
  def change
    remove_column :authentications, :user_id, :string
  end
end
