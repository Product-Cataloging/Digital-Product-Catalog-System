require 'rails_helper'

RSpec.describe "ProductItems", type: :request do
  include_examples('request_shared_spec', 'product_items', 15)

  let(:valid_attributes) do 
    { 
      color: FFaker::Lorem.word,
      dimension: FFaker::Lorem.word ,
      unit_of_measure_id: create(:unit_of_measure).id,
      price: 1.5 ,
      product_id: create(:product).id,
      currency_id: create(:currency).id,
      material: FFaker::Lorem.word,
      supplier_id: create(:supplier).id,
      capacity: FFaker::Lorem.word,
      status: "Approved"
   } 
  end


   let(:invalid_attributes) do 
    { 
      color: FFaker::Lorem.word,
      dimension: nil,
      unit_of_measure_id: create(:unit_of_measure).id,
      price: 1.5 ,
      product_id: create(:product).id,
      currency_id: create(:currency).id,
      material:FFaker::Lorem.word,
      supplier_id: create(:supplier).id,
      capacity: FFaker::Lorem.word,
      status: "Approved"

   } 
  end

   let(:new_attributes) do 
    { 
      color: FFaker::Lorem.word
    } 
  end
end
