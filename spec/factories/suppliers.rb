FactoryBot.define do
  factory :supplier do
    company_name { FFaker::Lorem.word }
  
    address_line  {FFaker::Lorem.word} 
    primary_phone_number {FFaker::Lorem.word}
    email {FFaker::Lorem.word}
    postal_code {FFaker::Lorem.word}
    fax {FFaker::Lorem.word}

  end
end
