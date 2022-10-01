FactoryBot.define do
  factory :currency do
    name { FFaker::Name.name }
    aliass { FFaker::Name.name }
  end
end
