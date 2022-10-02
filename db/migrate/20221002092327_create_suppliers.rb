class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :company_name, null: false
      t.references :address, null: false, foreign_key: true
      t.references :contact_information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
