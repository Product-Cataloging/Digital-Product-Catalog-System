FactoryBot.define do
  factory :product_item do
    color { FFaker::Lorem.word }
    dimension { FFaker::Lorem.word}
    price { 1.5 }
    product factory: :product
    currency factory: :currency
    supplier factory: :supplier
    material { FFaker::Lorem.word}
    capacity { FFaker::Lorem.word}
    status {"Approved"}
    packaging_unit { FFaker::Lorem.word }

  end
end
