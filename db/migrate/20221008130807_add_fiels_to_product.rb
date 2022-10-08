class AddFielsToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products , :image_url , :string , null: true
    add_column :products , :brand , :string , null: true

  end
end
