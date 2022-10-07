class CategoriesController < ApplicationController
    include Common

    def index
        result = []
        
        Category.where(ancestry: nil).each do |category|
            result.push({id: category.id, 
                         name: category.name,
                         description: category.description,
                         children: category.descendants
                        }) 
        end
        render json: {success: true, data: result}        
    end

    private
    def model_params
        params.require(:payload).permit(:name, :description, :ancestry)
    end
end
