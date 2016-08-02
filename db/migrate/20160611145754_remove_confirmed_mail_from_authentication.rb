class RemoveConfirmedMailFromAuthentication < ActiveRecord::Migration[5.0]
  def change
    remove_column :authentications, :Confirmed_mail, :string
  end
end
