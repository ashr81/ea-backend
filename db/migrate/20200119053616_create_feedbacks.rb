class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.string :email, required: true
      t.text :description
      t.text :subject, required: true
      t.integer :product_id, required: true
      t.integer :platform_id, required: true
      t.integer :topic_id, required: true
      t.integer :issue_id
      t.timestamps
    end
  end
end
