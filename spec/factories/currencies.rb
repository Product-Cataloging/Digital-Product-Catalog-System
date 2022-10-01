FactoryBot.define do
  factory :currency do
    name { FFaker::Name.name }
    alias { FFaker::Name.name }
  end
end
