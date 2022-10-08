class RemoveColumnFromSuppliers < ActiveRecord::Migration[7.0]
  def change
    remove_column :suppliers, :address_id
    remove_column :suppliers, :contact_information_id
    
  end
end
