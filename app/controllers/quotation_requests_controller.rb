class QuotationRequestsController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:first_name, :last_name, :email, :product_name,:phone_number, :image_url, :description)
    end
end
