class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :password
      t.string :flat_houseno
      t.string :street
      t.string :area
      t.string :city
      t.integer :pin

      t.timestamps
    end
  end
end
