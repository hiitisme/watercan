class CreateDistributorProductRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :distributor_product_relations do |t|
      t.integer :product_id
      t.integer :distributor_id

      t.timestamps
    end
  end
end
