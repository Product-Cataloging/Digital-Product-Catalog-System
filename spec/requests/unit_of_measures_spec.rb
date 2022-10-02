require 'rails_helper'

RSpec.describe "UnitOfMeasures", type: :request do
  include_examples('request_shared_spec', 'unit_of_measures', 3)

  let(:valid_attributes) do 
    { 
    name: FFaker::Name.name,
    abbreviation: FFaker::Name.name,
    
   } 
  end


   let(:invalid_attributes) do 
    { 
      name: nil,
      abbreviation: nil,
       
   } 
  end

   let(:new_attributes) do 
    { 
      name: FFaker::Name.name,
    
    } 
  end
end
    

 

