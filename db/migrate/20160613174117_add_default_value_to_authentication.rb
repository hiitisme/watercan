class AddDefaultValueToAuthentication < ActiveRecord::Migration[5.0]
  def change
    change_column :authentications, :admin, :boolean, :default => false
  end
end
