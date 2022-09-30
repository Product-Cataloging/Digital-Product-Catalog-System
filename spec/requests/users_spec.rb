require 'rails_helper'

RSpec.describe "Users", type: :request do
  include_examples('request_shared_spec', 'users', 6, [:index, :show, :update])

  let(:valid_attributes) do 
    { 
    username: FFaker::Name.name,
    email: FFaker::Internet.email,
    password_digest: FFaker::Code.npi,
    user_type: FFaker::Lorem.word,
    is_active: true 

   } 
  end


   let(:invalid_attributes) do 
    { 
    username: nil,
    email: FFaker::Internet.email,
    password_digest: nil,
    user_type: nil,
    is_active: true  
   } 
  end

   let(:new_attributes) do 
    { 
    username: FFaker::Name.name
    } 
  end


end
