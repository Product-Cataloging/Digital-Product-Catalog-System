class RemoveFielsFromProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products , :tag
    
  end
end
