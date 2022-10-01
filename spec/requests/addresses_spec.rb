require 'rails_helper'

RSpec.describe "Addresses", type: :request do
  include_examples('request_shared_spec', 'addresses', 6)

  let(:valid_attributes) do 
    { 
      address_line1: FFaker::Lorem.word ,
      address_line2: FFaker::Lorem.word ,
      city: FFaker::Lorem.word ,
      region: FFaker::Lorem.word ,
      postal_code: FFaker::Lorem.word

   } 
  end


   let(:invalid_attributes) do 
    { 
      address_line1: nil ,
      address_line2: nil ,
      city: FFaker::Lorem.word ,
      region: FFaker::Lorem.word ,
      postal_code: FFaker::Lorem.word
   } 
  end

   let(:new_attributes) do 
    { 
    city: FFaker::Lorem.word
    } 
  end
end
