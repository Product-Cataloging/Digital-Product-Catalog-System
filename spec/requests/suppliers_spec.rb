require 'rails_helper'

RSpec.describe "Suppliers", type: :request do
  include_examples('request_shared_spec', 'suppliers', 7)

  let(:valid_attributes) do 
    { 
      company_name: FFaker::Lorem.word,
      address_line: FFaker::Lorem.word,
      primary_phone_number: FFaker::Lorem.word,
      email: FFaker::Lorem.word,
      postal_code: FFaker::Lorem.word,
      fax: FFaker::Lorem.word,
   } 
  end


   let(:invalid_attributes) do 
    { 
      
      company_name: nil,
      address_line: nil,
      primary_phone_number: FFaker::Lorem.word,
      email: FFaker::Lorem.word,
      postal_code: FFaker::Lorem.word,
      fax: FFaker::Lorem.word,
   } 
  end

   let(:new_attributes) do 
    { 
      company_name: FFaker::Lorem.word
    } 
  end
end
