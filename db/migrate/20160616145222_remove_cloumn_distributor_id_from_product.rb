class RemoveCloumnDistributorIdFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :distributor_id
  end
end
