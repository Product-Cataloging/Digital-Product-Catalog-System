class NotificationsController < ApplicationController
    include Common

    def unread_notification
        notifications = Notification.where("delivery_date <= ?", Date.today).where(status: Notification::UNREAD)
        render json: {success: true, data: serialize(notifications)}
    end

    private

    def model_params
        params.require(:payload).permit(:title, :message, :sender, :delivery_date, :status)
    end
end
