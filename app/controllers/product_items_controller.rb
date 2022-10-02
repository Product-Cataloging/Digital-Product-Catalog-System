class ProductItemsController < ApplicationController
    include Common

    def model_params
        params.require(:payload).permit(:color, :size, :unit_of_measure_id, :price, :product_id, :currency_id)
    end
end
