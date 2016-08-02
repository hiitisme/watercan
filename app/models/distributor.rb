class Distributor < ApplicationRecord
  has_one :authentication, dependent: :destroy
  has_many :distributor_products, dependent: :destroy
end
