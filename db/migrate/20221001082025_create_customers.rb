class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.references :contact_information, null: false, foreign_key: {to_table: :contact_informations}
      t.references :user, null: false, foreign_key: {to_table: :users}
      t.references :address, null: false, foreign_key: {to_table: :addresses}

      t.timestamps
    end
  end
end
