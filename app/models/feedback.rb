class Feedback < ApplicationRecord
  belongs_to :product
  belongs_to :platform
  belongs_to :topic
end
