class AddUserqIdToAuthentications < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :user_id, :integer
  end
end