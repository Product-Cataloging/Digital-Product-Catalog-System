class CreateContactInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_informations do |t|
      t.string :primary_phone_number, null: false
      t.string :secondary_phone_number, null: false
      t.string :fax, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
