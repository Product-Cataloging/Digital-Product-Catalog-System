require 'rails_helper'

RSpec.describe "Customers", type: :request do
  include_examples('request_shared_spec', 'customers', 6, [:index])

  let(:valid_attributes) do 
    { 
      first_name: FFaker::Name.name,
      last_name: FFaker::Name.name,
      contact_information_id: create(:contact_information).id,
      user_id: create(:user).id,
      address_id: create(:address).id

   } 
  end


   let(:invalid_attributes) do 
    { 
      first_name: nil,
      last_name: FFaker::Name.name,
      contact_information_id: create(:contact_information).id,
      user_id: nil,
      address_id: create(:address).id 
   } 
  end

   let(:new_attributes) do 
    { 
    first_name: FFaker::Name.name
    } 
  end


end
