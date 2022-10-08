class User < ApplicationRecord
    has_secure_password
    validates :username, :email, :password, :user_type, :is_active, presence: true
    validates :username, :email, uniqueness: true
    ADMIN = 'Admin'.freeze
    OPERATOR = 'Operator'.freeze
    USER_TYPES = [ADMIN, OPERATOR].freeze
    validates :user_type , inclusion: {:in => USER_TYPES}

end
