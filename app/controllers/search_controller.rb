class SearchController < ApplicationController
    # before_action :set_search

    def search
        search_res = []
        keyword = search_params['keyword'].downcase
        res = Category.all.where("lower(name) LIKE :search", search: "#{keyword}")
        res2 = Supplier.all.where("lower(company_name) LIKE :search", search: "#{keyword}")
        res3 = Product.all.where("lower(name) LIKE :search", search: "#{keyword}")
        
        
        for i in res
            samaa = Product.where(category_id: i.id)
            for y in samaa
                if search_res.exclude?(y)
                    search_res.push(y)
                end
            end
        end

        for i in res2
            samaa2 = Product.where(supplier_id: i.id)
            for y in samaa2
                if search_res.exclude?(y)
                    search_res.push(y)
                end
            end
        end

        for i in res3
            if search_res.exclude?(i)
                search_res.push(i)
            end
        end

        render json: { success: true, data: search_res }
    end


    private

    def search_params
        params.require(:payload).permit(:keyword)
    end


end
