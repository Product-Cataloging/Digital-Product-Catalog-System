require 'rails_helper'

RSpec.describe Currency, type: :model do
  attributes = [
    { name: :presence },
    { aliass: :presence },
    
  ]

  include_examples('model_shared_spec', :currency, attributes)
end
