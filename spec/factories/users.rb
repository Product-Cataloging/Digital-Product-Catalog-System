FactoryBot.define do
  factory :user do
    username { FFaker::Name.name }
    email { FFaker::Internet.email }
    password { "MyString" }
    user_type { User::OPERATOR}
    is_active { true }
  end
end
