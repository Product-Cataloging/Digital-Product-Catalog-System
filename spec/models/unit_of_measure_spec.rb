require 'rails_helper'

RSpec.describe UnitOfMeasure, type: :model do
  attributes = [
    { name: :presence },
    { abbreviation: :presence },
    
  ]

  include_examples('model_shared_spec', :unit_of_measure, attributes)
end

