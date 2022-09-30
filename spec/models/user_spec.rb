require 'rails_helper'

RSpec.describe User, type: :model do
  attributes = [
    { username: %i[presence uniqueness] },
    { email: %i[presence uniqueness] },
    { password_digest: :presence },
    { user_type: :presence },
    { is_active: :presence },
  ]

  include_examples('model_shared_spec', :user, attributes)
end
