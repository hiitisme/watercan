class AddIsDistributorToAuthentication < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :is_distributor, :boolean
  end
end
