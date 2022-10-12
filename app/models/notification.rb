class Notification < ApplicationRecord
    validates :title, :message, :delivery_date, :sender, presence: true
end
