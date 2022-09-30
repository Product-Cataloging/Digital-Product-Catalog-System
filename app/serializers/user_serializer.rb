class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :user_type, :is_active
end
