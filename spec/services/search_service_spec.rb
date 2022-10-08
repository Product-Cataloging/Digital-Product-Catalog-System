RSpec.describe SearchService do
    let(:service) { described_class.new }

    it "searches" do
        cat = create(:category, name: 'hello')
        cat11 = create(:supplier, company_name: 'hellos')
        cat12 = create(:supplier, company_name: 'hell')
        cat1 = create(:category, name: 'HEllo111')
        cat2 = create(:category, name: 'hELlo222')
        res = service.search_product(search: 'hello')
        expect(res.count).to eq(0)  
    end
    
end