class AddDistributorToAuthentication < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :distributor, :boolean
  end
end
