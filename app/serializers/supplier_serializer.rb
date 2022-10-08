class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :email, :address_line, :primary_phone_number, :fax, :postal_code
end
