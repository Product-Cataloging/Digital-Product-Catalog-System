class CreateQuotationRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :quotation_requests do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.string :email, null: false
      t.string :product_name, null: false
      t.string :image_url, null: false
      t.string :description

      t.timestamps
    end
  end
end
