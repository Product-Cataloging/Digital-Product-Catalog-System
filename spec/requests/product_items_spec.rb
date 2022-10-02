require 'rails_helper'

RSpec.describe "ProductItems", type: :request do
  include_examples('request_shared_spec', 'product_items', 7)

  let(:valid_attributes) do 
    { 
      color: FFaker::Lorem.word,
      size: 1 ,
      unit_of_measure_id: create(:unit_of_measure).id,
      price: 1.5 ,
      product_id: create(:product).id,
      currency_id: create(:currency).id
   } 
  end


   let(:invalid_attributes) do 
    { 
      color: FFaker::Lorem.word,
      size: nil,
      unit_of_measure_id: create(:unit_of_measure).id,
      price: 1.5 ,
      product_id: create(:product).id,
      currency_id: create(:currency).id
   } 
  end

   let(:new_attributes) do 
    { 
      color: FFaker::Lorem.word
    } 
  end
end
