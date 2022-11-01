FactoryBot.define do
  factory :order do
    user factory: :user
    order_status { FFaker::Lorem.word }
    price { 1}
    quantity {FFaker::Lorem.word}
  end
end
