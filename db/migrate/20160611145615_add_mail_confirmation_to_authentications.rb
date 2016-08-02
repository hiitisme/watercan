class AddMailConfirmationToAuthentications < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :mail_confirmation, :boolean
  end
end
