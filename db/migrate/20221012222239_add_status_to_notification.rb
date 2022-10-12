class AddStatusToNotification < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :status, :string, null: false, default: "Unread"
  end
end
