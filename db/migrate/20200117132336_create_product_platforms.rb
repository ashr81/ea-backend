class CreateProductPlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :product_platforms do |t|

      t.integer :product_id
      t.integer :platform_id
      t.timestamps
    end
  end
end
