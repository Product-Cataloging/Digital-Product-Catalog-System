class ProductsController < ApplicationController
    include Common
    def items
        items=ProductItem.where(product_id: params[:id], status: 'Approved')
        render json:{success: true, data: serialize(items)}
    end

    def items_admin
        items=ProductItem.where(product_id: params[:id])
        render json:{success: true, data: serialize(items)}
    end

    private 

    def model_params
        params.require(:payload).permit(:name,:description,:category_id ,:image_url, :brand,:picture, :dimensions, :conversion_factor, :base_unit, :target_unit, :date_valid_from, :expiry_date, :item_group, :weight_in_kg, :tax_class, :revenue_code, :color, :material )
    end
end
