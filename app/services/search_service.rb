class SearchService
    def initialize
    end

    def search_product(params)
        search_res = []
        @keyword = params[:search].downcase
        res = Category.all.where("lower(name) LIKE :search", search: "#{@keyword}")
        res2 = Supplier.all.where("lower(company_name) LIKE :search", search: "#{@keyword}")
        res3 = Product.all.where("lower(name) LIKE :search", search: "#{@keyword}")
        
        
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

        return search_res
    end

end