class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address_line1, null: false
      t.string :address_line2, null: false
      t.string :city, null: false
      t.string :region, null: false
      t.string :postal_code, null: false

      t.timestamps
    end
  end
end
