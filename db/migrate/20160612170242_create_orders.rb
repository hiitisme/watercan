class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :distributor_id
      t.integer :product_id
      t.integer :no_of_can
      t.datetime :time_of_delivery
      t.integer :price
      t.datetime :order_time
      t.datetime :approval_time
      t.datetime :dispatching

      t.timestamps
    end
  end
end
