class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name,:description,:category_id,:supplier_id ,:tag
end
