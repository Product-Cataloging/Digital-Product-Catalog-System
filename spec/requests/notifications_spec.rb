require 'rails_helper'

RSpec.describe "Notifications", type: :request do
  include_examples('request_shared_spec', 'notifications', 5)

  let(:valid_attributes) do 
    { 
      title: FFaker::Name.name,
      message: FFaker::Lorem.paragraph,
      delivery_date: Date.today,
      sender: FFaker::Lorem.word,
      status: Notification::UNREAD
   } 
  end


   let(:invalid_attributes) do 
    { 
      title: FFaker::Name.name,
      message: nil,
      delivery_date: Date.today,
      sender: FFaker::Lorem.word,
      status: Notification::UNREAD
   } 
  end

   let(:new_attributes) do 
    { 
    title: FFaker::Lorem.word
    } 
  end

  it "sends notification if delivery date is today or before today and status is unread" do
    noti1 = create(:notification, delivery_date: Date.today, status: Notification::UNREAD)
    noti2 = create(:notification, delivery_date: Date.today - 3, status: Notification::READ)
    noti3 = create(:notification, delivery_date: Date.today + 4)
    get "/unread_notification"
    result = JSON(response.body)
    expect(result['success']).to be_truthy 
    expect(result['data'].count).to eq(1)  
  end
  
  
end
