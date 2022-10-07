class CategoriesController < ApplicationController
    include Common

    def index
        result = []
        @categories  = Category.where(ancestry: nil)
        
        @categories.each do |category|
            result.push({parent: category, children: category.children}) 
        end

        render json: {success: true, data: result}        
    end

    private
    def model_params
        params.require(:payload).permit(:name, :description, :ancestry)
    end
end
