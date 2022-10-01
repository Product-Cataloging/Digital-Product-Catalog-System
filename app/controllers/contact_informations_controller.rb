class ContactInformationsController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:primary_phone_number, :secondary_phone_number, :fax, :email)
    end
end
