class AddRememberTokenToAuthentications < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :remember_token, :string
  end
end
