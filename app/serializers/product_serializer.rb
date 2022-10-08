class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name,:description,:category_id ,:image_url, :brand, :category_name

end
