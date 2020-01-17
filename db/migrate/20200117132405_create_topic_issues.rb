class CreateTopicIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_issues do |t|
      t.integer :topic_id
      t.integer :issue_id
      t.timestamps
    end
  end
end
