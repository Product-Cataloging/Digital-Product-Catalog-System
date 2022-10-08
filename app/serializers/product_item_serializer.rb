class ProductItemSerializer < ActiveModel::Serializer
  attributes :id, :color, :dimension, :unit_of_measure_id, :price, :product_id, :currency_id, :capacity, :material, :supplier_id
end
