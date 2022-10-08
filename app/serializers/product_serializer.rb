class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name,:description,:category_id,:supplier_id ,:image_url, :brand, :category_name, :supplier_company_name

end
