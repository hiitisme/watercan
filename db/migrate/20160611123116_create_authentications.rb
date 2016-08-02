class CreateAuthentications < ActiveRecord::Migration[5.0]
  def change
    create_table :authentications do |t|
      t.string :email
      t.string :password
      t.string :Confirmed_mail

      t.timestamps
    end
  end
end
