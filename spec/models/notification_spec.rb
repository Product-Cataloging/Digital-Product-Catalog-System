require 'rails_helper'

RSpec.describe Notification, type: :model do
  attributes = [
    { title: :presence },
    { message: :presence },
    { delivery_date: :presence },
    { sender: :presence },
    
  ]

  include_examples('model_shared_spec', :notification, attributes)
end
