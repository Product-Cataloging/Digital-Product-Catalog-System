FactoryBot.define do
  factory :category do
    name { FFaker::Lorem.word }
    description { FFaker::Lorem.paragraph }
  end
end
