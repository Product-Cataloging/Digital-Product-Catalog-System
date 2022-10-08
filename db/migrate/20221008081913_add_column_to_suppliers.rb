class AddColumnToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :address_line, :string, null: false
    add_column :suppliers, :primary_phone_number, :string, null: false
    add_column :suppliers, :email , :string, null: false
    add_column :suppliers, :postal_code, :string, null: true
    add_column :suppliers, :fax , :string, null: true


    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
