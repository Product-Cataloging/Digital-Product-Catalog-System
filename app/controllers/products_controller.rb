class ProductsController < ApplicationController
    include Common

    private 

    def model_params
        params.require(:payload).permit(:name,:description,:category_id,:supplier_id ,:tag)
    end
end
