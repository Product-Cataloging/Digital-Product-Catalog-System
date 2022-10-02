require 'rails_helper'

RSpec.describe "Products", type: :request do
  include_examples('request_shared_spec', 'products', 6)

  let(:valid_attributes) do 
    { 
      name: FFaker::Name.name,
      description: FFaker::Lorem.paragraph,
      category_id: create(:category).id,
      supplier_id: create(:supplier).id,
      tag: FFaker::Lorem.word,
   } 
  end


   let(:invalid_attributes) do 
    { 
      name: nil,
      description: FFaker::Lorem.paragraph,
      category_id: create(:category).id,
      supplier_id: create(:supplier).id,
      tag: FFaker::Lorem.word,
   } 
  end

   let(:new_attributes) do 
    { 
    name: FFaker::Lorem.word
    } 
  end
end
