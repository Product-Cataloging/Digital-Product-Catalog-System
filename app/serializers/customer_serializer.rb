class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_id, :contact_information_id, :address_id 
end
