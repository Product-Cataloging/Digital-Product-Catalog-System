class QuotationRequestsController < ApplicationController
    include Common

    def create
        model = QuotationRequest.new(model_params)
        if model.save
            service = NotificationService.new(first_name: model.first_name, last_name: model.last_name).create_notification()
            render json: { success: true, data: serialize(model) }, status: :created
        else
            render json: { success: false, error: model.errors.full_messages[0] }, status: :unprocessable_entity
        end
    end

    private

    def model_params
        params.require(:payload).permit(:first_name, :last_name, :email, :product_name,:phone_number, :image_url, :description, :quantity)
    end
end
