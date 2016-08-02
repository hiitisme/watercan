class CreateDistributorProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :distributor_products do |t|
      t.integer :distributor_id
      t.integer :product_id

      t.timestamps
    end
  end
end
