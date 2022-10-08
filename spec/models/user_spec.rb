require 'rails_helper'

RSpec.describe User, type: :model do
  attributes = [
    { username: %i[presence uniqueness] },
    { email: %i[presence uniqueness] },
    { password: :presence },
    { user_type: :presence },
    { is_active: :presence },
  ]

  include_examples('model_shared_spec', :user, attributes)
  it { should validate_inclusion_of(:user_type).in_array(User::USER_TYPES) }
  
end
