class QuotationRequestSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :product_name, :image_url, :description
end
