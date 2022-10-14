class ProductItemSerializer < ActiveModel::Serializer
  attributes :id, :color, :dimension, :price, :product_id, :currency_id, :capacity, :material, :supplier_id, :product_name, :supplier_company_name, :currency_name, :status, :packaging_unit
end
