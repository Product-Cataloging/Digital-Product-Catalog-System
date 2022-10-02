FactoryBot.define do
  factory :supplier do
    company_name { FFaker::Lorem.word }
    address factory: :address
    contact_information factory: :contact_information
  end
end
