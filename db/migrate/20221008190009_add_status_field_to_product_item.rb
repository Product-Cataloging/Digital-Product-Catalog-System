class AddStatusFieldToProductItem < ActiveRecord::Migration[7.0]
  def change
    add_column :product_items, :status, :string
  end
end
