class AddFieldsToProductItem < ActiveRecord::Migration[7.0]
  def change
    add_column :product_items, :material , :string , null: false
    add_column :product_items, :capacity , :string , null: true
    add_reference :product_items, :supplier, foreign_key: true


  end
end
