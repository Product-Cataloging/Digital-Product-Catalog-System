FactoryBot.define do
  factory :product do
    name { FFaker::Name.name }
    description { FFaker::Lorem.paragraph }
    category factory: :category
    supplier factory: :supplier
    tag { FFaker::Lorem.word }
  end
end
