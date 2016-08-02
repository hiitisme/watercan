class AddStreetToDistributor < ActiveRecord::Migration[5.0]
  def change
    add_column :distributors, :street, :string
  end
end
