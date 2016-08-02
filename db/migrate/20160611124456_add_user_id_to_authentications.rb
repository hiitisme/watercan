class AddUserIdToAuthentications < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :user_id, :string
  end
end
