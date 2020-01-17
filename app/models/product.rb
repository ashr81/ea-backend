class Product < ApplicationRecord
  has_many :platforms, through: :product_platforms
  has_many :product_platforms
end
