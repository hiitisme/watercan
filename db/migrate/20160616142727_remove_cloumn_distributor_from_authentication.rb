class RemoveCloumnDistributorFromAuthentication < ActiveRecord::Migration[5.0]
  def change
    remove_column :authentications, :distributor
  end
end
