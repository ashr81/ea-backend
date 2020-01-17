class CreatePlatformTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :platform_topics do |t|

      t.integer :platform_id
      t.integer :topic_id
      t.timestamps
    end
  end
end
