FactoryBot.define do
  factory :unit_of_measure do
    name { FFaker::Name.name }
    abbreviation { FFaker::Name.name }
  end
end
