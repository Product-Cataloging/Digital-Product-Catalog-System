FactoryBot.define do
  factory :customer do
    first_name { FFaker::Name.name }
    last_name { FFaker::Name.name }
    contact_information factory: :contact_information
    user factory: :user
    address factory: :address
  end
end
