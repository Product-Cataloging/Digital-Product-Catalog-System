class ProductItemsController < ApplicationController
    include Common

    def model_params
        params.require(:payload).permit(:color, :dimension, :unit_of_measure_id, :price, :product_id, :currency_id, :supplier_id, :material, :capacity, :status)
    end
end
