class SuppliersController < ApplicationController
    include Common
    
    private
    def model_params
        params.require(:payload).permit(:company_name, :address_id, :contact_information_id)
    end
end
