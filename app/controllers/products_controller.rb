class ProductsController < ApplicationController
    include Common
    def items
        items=ProductItem.where(product_id: params[:id])
        render json:{success: true, data: serialize(items)}

    end

    private 

    def model_params
        params.require(:payload).permit(:name,:description,:category_id ,:image_url, :brand)
    end
end
