class AddFieldToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :picture, :string
    add_column :products, :dimensions, :string
    add_column :products, :conversion_factor, :string
    add_column :products, :base_unit, :string
    add_column :products, :target_unit, :string
    add_column :products, :date_valid_from, :string
    add_column :products, :expiry_date, :string
    add_column :products, :item_group, :string
    add_column :products, :weight_in_kg, :string
    add_column :products, :tax_class, :string
    add_column :products, :revenue_code, :string
    add_column :products, :color, :string
    add_column :products, :material, :string
  end
end
