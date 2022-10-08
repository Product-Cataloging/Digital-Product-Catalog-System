FactoryBot.define do
  factory :product do
    name { FFaker::Name.name }
    description { FFaker::Lorem.paragraph }
    category factory: :category
    image_url { FFaker::Lorem.word }
    brand { FFaker::Lorem.word }
  end
end
