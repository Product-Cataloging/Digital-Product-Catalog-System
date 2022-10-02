require 'rails_helper'

RSpec.describe "Categories", type: :request do
  include_examples('request_shared_spec', 'categories', 3)

  let(:valid_attributes) do 
    { 
      name: FFaker::Lorem.word,
      description: FFaker::Lorem.paragraph

   } 
  end


   let(:invalid_attributes) do 
    { 
      name: nil,
      description: FFaker::Lorem.paragraph
   } 
  end

   let(:new_attributes) do 
    { 
    name: FFaker::Lorem.word
    } 
  end
end
