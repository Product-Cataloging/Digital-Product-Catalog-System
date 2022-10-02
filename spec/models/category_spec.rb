require 'rails_helper'

RSpec.describe Category, type: :model do
  attributes = [
    { name: :presence },
    
  ]

  include_examples('model_shared_spec', :category, attributes)
end
