class SuppliersController < ApplicationController
    include Common
    
    private
    def model_params
        params.require(:payload).permit(:company_name, :email, :address_line, :primary_phone_number, :fax, :postal_code)
    end
end
