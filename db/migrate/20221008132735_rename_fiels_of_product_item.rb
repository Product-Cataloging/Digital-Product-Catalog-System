class RenameFielsOfProductItem < ActiveRecord::Migration[7.0]
  def change
    rename_column :product_items, :size, :dimension
    change_column :product_items, :dimension, :string, null: false
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
