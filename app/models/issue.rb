class Issue < ApplicationRecord
  has_many :topics, through: :topic_issues
  has_many :topic_issues
end
