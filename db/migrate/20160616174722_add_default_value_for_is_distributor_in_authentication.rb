class AddDefaultValueForIsDistributorInAuthentication < ActiveRecord::Migration[5.0]
  def change
    change_column :authentications,:is_distributor,:boolean,:default => false
  end
end
