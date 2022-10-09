RSpec.describe SearchService do

    it "searches" do
        cat = create(:category, name: 'hello')
        cat2 = create(:category, name: 'fff')
        cat11 = create(:supplier, company_name: 'hello')
        cat1a = create(:product, category_id: cat.id)
        cat1c = create(:product, category_id: cat.id)
        cat1d = create(:product, name: "hello")
        create(:product, name: "helo")
        create(:product, name: "hllo")
        create(:product, name: "bbb", category_id: cat2.id)
        create(:product, name: "ccc", category_id: cat2.id)
        create(:product, name: "ddd", category_id: cat2.id)
        cat1b = create(:product_item, supplier_id: cat11.id, product_id: cat1d.id)
        cat1j = create(:product_item, supplier_id: cat11.id, product_id: cat1d.id)
        cat1f = create(:product_item, supplier_id: cat11.id)
        @service =  SearchService.new(search: cat.name)
        res = @service.search_prod()
        expect(res.count).to eq(3)  
    end
    
end