FactoryBot.define do
  factory :address do
    address_line1 { FFaker::Lorem.word }
    address_line2 { FFaker::Lorem.word }
    city { FFaker::Lorem.word }
    region { FFaker::Lorem.word }
    postal_code { FFaker::Lorem.word }
  end
end
