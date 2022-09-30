class User < ApplicationRecord
    validates :username, :email, :password_digest, :user_type, :is_active, presence: true
    validates :username, :email, uniqueness: true
end
