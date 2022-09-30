class User < ApplicationRecord
    has_secure_password
    validates :username, :email, :password, :user_type, :is_active, presence: true
    validates :username, :email, uniqueness: true
end
