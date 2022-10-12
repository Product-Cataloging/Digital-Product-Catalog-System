FactoryBot.define do
  factory :quotation_request do
    first_name { FFaker::Lorem.word }
    last_name { FFaker::Lorem.word }
    phone_number { FFaker::Lorem.word }
    email { FFaker::Lorem.word }
    product_name { FFaker::Lorem.word }
    image_url { FFaker::Lorem.word }
    description { FFaker::Lorem.word }
  end
end
