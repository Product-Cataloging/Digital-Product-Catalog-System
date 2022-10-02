class ProductItemSerializer < ActiveModel::Serializer
  attributes :id, :color, :size, :unit_of_measure_id, :price, :product_id, :currency_id
end
