class CustomersController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:first_name, :last_name, :user_id, :contact_information_id, :address_id)
    end
end
