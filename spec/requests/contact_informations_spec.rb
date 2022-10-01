require 'rails_helper'

RSpec.describe "ContactInformations", type: :request do
  include_examples('request_shared_spec', 'contact_informations', 5)

  let(:valid_attributes) do 
    { 
    primary_phone_number: FFaker::Name.name,
    secondary_phone_number: FFaker::Internet.email,
    fax: FFaker::Code.npi,
    email: FFaker::Lorem.word,
   } 
  end


   let(:invalid_attributes) do 
    { 
      primary_phone_number: nil,
      secondary_phone_number: FFaker::Internet.email,
      fax: FFaker::Code.npi,
      email: FFaker::Lorem.word, 
   } 
  end

   let(:new_attributes) do 
    { 
      primary_phone_number: FFaker::Name.name,
    } 
  end
end
