RSpec.describe SearchService do
    let(:service) { described_class.new }

    it "searches" do
        cat = create(:category, name: 'hello')
        cat11 = create(:supplier, company_name: 'hellos')
        cat12 = create(:supplier, company_name: 'hell')
        cat1 = create(:category, name: 'HEllo111')
        cat2 = create(:category, name: 'hELlo222')
        create(:product, category_id: cat.id, supplier_id: cat11.id)
        create(:product, category_id: cat.id, supplier_id: cat11.id)
        create(:product, category_id: cat.id, supplier_id: cat12.id)
        res = service.search_product(search: 'hello')
        expect(res.count).to eq(3)  
    end
    
end