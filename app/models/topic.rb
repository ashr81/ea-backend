class Topic < ApplicationRecord
  has_many :issues, through: :topic_issues
  has_many :topic_issues
  has_many :platforms, through: :platform_topics
  has_many :platform_topics
end
