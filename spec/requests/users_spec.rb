require 'rails_helper'

RSpec.describe "Users", type: :request do
  include_examples('request_shared_spec', 'users', 6, [:index, :show, :update])

  let(:valid_attributes) do 
    { 
    username: FFaker::Name.name,
    email: FFaker::Internet.email,
    password: FFaker::Code.npi,
    user_type: FFaker::Lorem.word,
    is_active: true 

   } 
  end


   let(:invalid_attributes) do 
    { 
    username: nil,
    email: FFaker::Internet.email,
    password: nil,
    user_type: nil,
    is_active: true  
   } 
  end

   let(:new_attributes) do 
    { 
    username: FFaker::Name.name
    } 
  end

    describe 'POST #login' do
      it 'returns token when a valid email and password provided' do
          user = create(:user)
          
          post '/login', params: { email: user.email, password: user.password }
          result = JSON(response.body)
          expect(result['success']).to be_truthy
          expect(result['jwt']).to_not be nil
      end

      it 'returns error message when invalid email or password provided' do
          user = create(:user)
          post '/login', params: { email: 'test@gmail.com', password: user.password }
          result = JSON(response.body)
          expect(result['success']).to be_falsey
          expect(result['errors'][0]).to eq('Invalid username or password !')
      end
    end

    


end
