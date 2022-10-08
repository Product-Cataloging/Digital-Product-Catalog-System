class ProductsController < ApplicationController
    include Common

    private 

    def model_params
        params.require(:payload).permit(:name,:description,:category_id ,:image_url, :brand)
    end
end
