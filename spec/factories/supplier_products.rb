FactoryBot.define do
  factory :supplier_product do
    supplier { FFaker::Lorem.word }
    product { FFaker::Lorem.word}
    remark {  FFaker::Lorem.paragraph}
    supplier_purchase_price { 1 }
    currency {  FFaker::Lorem.word}
    supplier_margin { FFaker::Lorem.word}
    supplier_notes { FFaker::Lorem.paragraph}
    quantity_unit {  FFaker::Lorem.word}
  end
end
