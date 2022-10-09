require 'rails_helper'

RSpec.describe "Products", type: :request do
  include_examples('request_shared_spec', 'products', 7)

  let(:valid_attributes) do 
    { 
      name: FFaker::Name.name,
      description: FFaker::Lorem.paragraph,
      category_id: create(:category).id,
      image_url: FFaker::Lorem.word,
      brand: FFaker::Lorem.word


   } 
  end


   let(:invalid_attributes) do 
    { 
      name: nil,
      description: FFaker::Lorem.paragraph,
      category_id: create(:category).id,
      image_url: FFaker::Lorem.word,
      brand: FFaker::Lorem.word

   } 
  end

   let(:new_attributes) do 
    { 
    name: FFaker::Lorem.word
    } 
  end
  it "returns approved product items" do
    p1= create(:product)
    create(:product_item, product_id: p1.id)
    create(:product_item, product_id: p1.id, status: 'Declined')
    create(:product_item, product_id: p1.id)
    get "/product/items/#{p1.id}"
    result = JSON(response.body)
    expect(result['success']).to be_truthy
    expect(result['data'].count).to eq(2)

  end

  it "returns all product items" do
    p1= create(:product)
    create(:product_item, product_id: p1.id, status: 'Declined')
    create(:product_item, product_id: p1.id, status: 'Waiting')
    create(:product_item, product_id: p1.id)
    get "/product/items/admin/#{p1.id}"
    result = JSON(response.body)
    expect(result['success']).to be_truthy
    expect(result['data'].count).to eq(3)

  end
  
end
