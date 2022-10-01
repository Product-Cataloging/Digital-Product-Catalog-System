FactoryBot.define do
  factory :contact_information do
    primary_phone_number { FFaker::Lorem.word }
    secondary_phone_number { FFaker::Lorem.word }
    fax { FFaker::Lorem.word }
    email { FFaker::Lorem.word }
  end
end
