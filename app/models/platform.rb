class Platform < ApplicationRecord
  has_many :products, through: :product_platforms
  has_many :product_platforms
  has_many :topics, through: :platform_topics
  has_many :platform_topics
end
