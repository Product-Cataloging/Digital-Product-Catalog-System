class CreateSupplierProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_products do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :remark, null:false
      t.integer :supplier_purchase_price, null:false
      t.references :currency, null: false, foreign_key: true
      t.string :supplier_margin , null: false
      t.string :supplier_notes , null: false
      t.string :quantity_unit, null:false

      t.timestamps
    end
  end
end
