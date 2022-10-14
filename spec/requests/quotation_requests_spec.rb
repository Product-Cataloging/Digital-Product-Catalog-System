require 'rails_helper'

RSpec.describe "QuotationRequests", type: :request do
  include_examples('request_shared_spec', 'quotation_requests', 9)

  let(:valid_attributes) do 
    { 
      first_name: FFaker::Name.name,
      last_name: FFaker::Name.name,
      description: FFaker::Lorem.paragraph,
      email: FFaker::Internet.email,
      image_url: FFaker::Lorem.word,
      phone_number: FFaker::Lorem.word,
      product_name: FFaker::Lorem.word,
      quantity: 7,
      status: QuotationRequest::REQUESTED
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
      product_name: FFaker::Lorem.word,
      quantity: 7,
      status: QuotationRequest::REQUESTED
    } 
    end

   let(:new_attributes) do 
    { 
    first_name: FFaker::Lorem.word
    } 
    end

    it "creates notification when a quotation is requested" do
      post quotation_requests_url, params: {payload: valid_attributes}
      service = NotificationService.new(first_name: valid_attributes[:first_name], last_name: valid_attributes[:last_name]).create_notification()
      expect(service.sender).to eq(valid_attributes[:first_name] + ' ' + valid_attributes[:last_name]) 
    end
    
end
