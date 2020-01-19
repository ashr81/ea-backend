class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.string :email, null: false
      t.text :description
      t.text :subject, null: false
      t.integer :product_id, null: false
      t.integer :platform_id, null: false
      t.integer :topic_id, null: false
      t.integer :issue_id
      t.timestamps
    end
  end
end
