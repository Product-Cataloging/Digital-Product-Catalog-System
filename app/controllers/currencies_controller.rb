class CurrenciesController < ApplicationController
    include Common 

    private
    def model_params
        params.require(:payload).permit(:name, :aliass)
    end
end
