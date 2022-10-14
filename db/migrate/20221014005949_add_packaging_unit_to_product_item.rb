class AddPackagingUnitToProductItem < ActiveRecord::Migration[7.0]
  def change
    add_column :product_items, :packaging_unit, :string, null: false
  end
end
