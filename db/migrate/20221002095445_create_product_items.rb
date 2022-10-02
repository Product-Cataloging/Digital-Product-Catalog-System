class CreateProductItems < ActiveRecord::Migration[7.0]
  def change
    create_table :product_items do |t|
      t.string :color, null: false
      t.integer :size, null: false
      t.references :unit_of_measure, null: false, foreign_key: true
      t.float :price, null: false
      t.references :product, null: false, foreign_key: true
      t.references :currency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
