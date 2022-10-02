class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :address_id, :contact_information_id
end
