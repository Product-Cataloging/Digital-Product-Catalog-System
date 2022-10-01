require 'rails_helper'

RSpec.describe "Currencies", type: :request do
  include_examples('request_shared_spec', 'currencies', 3)

  let(:valid_attributes) do 
    { 
    name: FFaker::Name.name,
    aliass: FFaker::Name.name,
    
   } 
  end


   let(:invalid_attributes) do 
    { 
      name: nil,
      aliass: nil,
       
   } 
  end

   let(:new_attributes) do 
    { 
      name: FFaker::Name.name,
    
    } 
  end
end
    
