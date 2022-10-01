class ContactInformationSerializer < ActiveModel::Serializer
  attributes :id, :primary_phone_number, :secondary_phone_number, :fax, :email
end
