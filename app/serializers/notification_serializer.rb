class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :title, :message, :sender, :delivery_date
end
