require 'rails_helper'

RSpec.describe "Categories", type: :request do
  include_examples('request_shared_spec', 'categories', 4, [:index])

  let(:valid_attributes) do 
    { 
      name: FFaker::Lorem.word,
      description: FFaker::Lorem.paragraph,
      ancestry: nil

   } 
  end


   let(:invalid_attributes) do 
    { 
      name: nil,
      description: FFaker::Lorem.paragraph,
      ancestry: nil
   } 
  end

   let(:new_attributes) do 
    { 
    name: FFaker::Lorem.word
    } 
  end


  describe "GET /index" do
    it "returns ancestry of category" do
      cat1 = create(:category, name: 'Kitchen', ancestry: nil)
      cat2 = create(:category, name: 'Farm', ancestry: nil)

      subcat1 = create(:category, name: 'Kitchen_child1', ancestry: cat1.id)
      subcat12 = create(:category, name: 'Kitchen_child2', ancestry: cat1.id)
      subcat13 = create(:category, name: 'Kitchen_child3', ancestry: cat1.id)
      subcat2 = create(:category, name: 'Farm_child1', ancestry: cat2.id)

      get '/category'
      result = JSON(response.body)
      expect(result['success']).to be_truthy
      expect(result['data'].count).to eq(2)
      expect(result['data'][0]['children'].count).to eq(3) 
    end
  end

  
  
end
