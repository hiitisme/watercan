class AddColumnPriceInProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price , :string
    add_column :products, :quantity, :string
  end
end
