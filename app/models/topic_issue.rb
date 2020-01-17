class TopicIssue < ApplicationRecord
  belongs_to :topic
  belongs_to :issue
end
