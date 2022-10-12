class Notification < ApplicationRecord
    UNREAD = "Unread".freeze
    READ = "Read".freeze
    STATUS_TYPES = [UNREAD, READ].freeze
    
    validates :title, :message, :delivery_date, :sender, presence: true
    validates :status, inclusion: {:in => STATUS_TYPES}
end
