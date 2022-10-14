class ProductItemsController < ApplicationController
    include Common

    def model_params
        params.require(:payload).permit(:color, :dimension, :price, :product_id, :currency_id, :supplier_id, :material, :capacity, :status, :packaging_unit)
    end
end
