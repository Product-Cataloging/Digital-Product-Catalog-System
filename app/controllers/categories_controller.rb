class CategoriesController < ApplicationController
    include Common

    def index
        result = []
        @categories  = Category.where(ancestry: nil)
        
        @categories.each do |category|
            child = Category.where(ancestry: category.id)
            result.push({parent: category, children: child}) 
        end

        render json: {success: true, data: result}        
    end

    private
    def model_params
        params.require(:payload).permit(:name, :description)
    end
end
