FactoryBot.define do
  factory :product_item do
    color { FFaker::Lorem.word }
    size { 1 }
    unit_of_measure factory: :unit_of_measure
    price { 1.5 }
    product factory: :product
    currency factory: :currency
  end
end
