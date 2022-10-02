require 'rails_helper'

RSpec.describe Package, type: :model do
  attributes = [
    { total_piece: %i[presence numericality] },
    { general_weight: %i[presence  numericality] },
    { price: %i[presence numericality]}
    
  ]

  include_examples('model_shared_spec', :package, attributes)
 
end
