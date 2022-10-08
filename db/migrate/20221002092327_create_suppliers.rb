class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :company_name, null: false
      t.string :address_id, null: false
      t.string :contact_information_id, null: false

      t.timestamps
    end
  end
end
