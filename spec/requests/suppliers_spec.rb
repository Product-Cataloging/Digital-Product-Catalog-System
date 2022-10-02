require 'rails_helper'

RSpec.describe "Suppliers", type: :request do
  include_examples('request_shared_spec', 'suppliers', 4)

  let(:valid_attributes) do 
    { 
      company_name: FFaker::Lorem.word,
      address_id: create(:address).id,
      contact_information_id: create(:contact_information).id
   } 
  end


   let(:invalid_attributes) do 
    { 
      company_name: nil,
      address_id: create(:address).id,
      contact_information_id: create(:contact_information).id
   } 
  end

   let(:new_attributes) do 
    { 
      company_name: FFaker::Lorem.word
    } 
  end
end
