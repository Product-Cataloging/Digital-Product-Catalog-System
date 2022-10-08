class RemoveSupplierFromProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products , :supplier_id
  end
end
