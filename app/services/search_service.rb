class SearchService

    def initialize(params)
      @search = params[:search]
    end

    def search_prod
        q = {category_name_or_name_i_cont_any: @search}
        res = Product.ransack(q).result.to_a
        q = {product_name_i_cont_any: @search}
        res2 = ProductItem.ransack(q).result.to_a
        
        for i in res2
            if res.exclude?(i.product)
                res.push(i.product)
            end
        end
        
        return res
    end

end