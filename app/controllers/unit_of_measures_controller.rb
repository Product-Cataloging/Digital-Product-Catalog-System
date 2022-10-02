class UnitOfMeasuresController < ApplicationController
    include Common 

    private 
    def model_params
        params.require(:payload).permit(:name, :abbreviation)  
    end 
end
