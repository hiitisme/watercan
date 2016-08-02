class Product < ApplicationRecord

  has_many :distributor_products

  validates :name,presence: true
  validates :brand,presence: true
  validates :price, presence: true
  validates :quantity, presence: true
end
