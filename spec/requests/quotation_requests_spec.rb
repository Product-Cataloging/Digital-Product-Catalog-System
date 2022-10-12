require 'rails_helper'

RSpec.describe "QuotationRequests", type: :request do
  include_examples('request_shared_spec', 'quotation_requests', 8)

  let(:valid_attributes) do 
    { 
      first_name: FFaker::Name.name,
      last_name: FFaker::Name.name,
      description: FFaker::Lorem.paragraph,
      email: FFaker::Internet.email,
      image_url: FFaker::Lorem.word,
      phone_number: FFaker::Lorem.word,
      product_name: FFaker::Lorem.word
    } 
    end


   let(:invalid_attributes) do 
    { 
      first_name: nil,
      last_name: nil,
      description: FFaker::Lorem.paragraph,
      email: FFaker::Internet.email,
      image_url: FFaker::Lorem.word,
      phone_number: FFaker::Lorem.word,
      product_name: FFaker::Lorem.word
    } 
    end

   let(:new_attributes) do 
    { 
    first_name: FFaker::Lorem.word
    } 
    end
end
