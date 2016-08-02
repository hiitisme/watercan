class CreateDistributors < ActiveRecord::Migration[5.0]
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :flat_houseno
      t.string :area
      t.string :city
      t.string :state
      t.string :country
      t.integer :pin
      t.bigint :phone
      t.string :email

      t.timestamps
    end
  end
end
