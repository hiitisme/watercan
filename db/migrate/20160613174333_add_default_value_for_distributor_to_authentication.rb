class AddDefaultValueForDistributorToAuthentication < ActiveRecord::Migration[5.0]
  def change
    change_column :authentications, :distributor, :boolean, :default => false
  end
end
