class AddDistributorIdToAuthentication < ActiveRecord::Migration[5.0]
  def change
    add_column :authentications, :distributor_id, :integer
  end
end
