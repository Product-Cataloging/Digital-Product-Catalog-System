FactoryBot.define do
  factory :order_item do
    product factory: :product
    order  factory: :order
    order_date { "2022-11-01 21:49:37" }
    delivery_date { "2022-11-01 21:49:37" }
  end
end
