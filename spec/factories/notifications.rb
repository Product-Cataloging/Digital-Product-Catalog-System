FactoryBot.define do
  factory :notification do
    title { FFaker::Lorem.word }
    message { FFaker::Lorem.word }
    delivery_date { Date.today }
    sender { FFaker::Lorem.word }
    status {Notification::UNREAD}
  end
end
