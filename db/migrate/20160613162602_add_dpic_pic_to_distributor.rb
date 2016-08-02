class AddDpicPicToDistributor < ActiveRecord::Migration[5.0]
  def change
    add_column :distributors, :Dpic, :string
    add_column :distributors, :pic, :binary
  end
end
