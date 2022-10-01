class AddressesController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:address_line1, :address_line2, :city, :region, :postal_code)
    end
end
