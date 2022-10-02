class Customer < ApplicationRecord
  belongs_to :contact_information
  belongs_to :user
  belongs_to :address

  validates :first_name, :last_name, presence: true
end
