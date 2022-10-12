class NotificationService

    def initialize(params)
        @sender = params[:first_name] + ' ' + params[:last_name]
    end

    def create_notification
        Notification.create(
            {
                title: "New Quotation Request",
                message: "There has been a new quotaion request sent from '#{@sender}' please review the request as soon as possible",
                delivery_date: Date.today,
                sender: @sender
            }
        )
    
    end

end