class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :user_type, :is_active
end
