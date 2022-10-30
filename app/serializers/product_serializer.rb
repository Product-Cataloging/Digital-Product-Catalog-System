class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description ,:category_id , :image_url , :brand, :category_name,:picture, :dimensions, :conversion_factor, :base_unit, :target_unit, :date_valid_from, :expiry_date, :item_group, :weight_in_kg, :tax_class, :revenue_code, :color, :material

end
