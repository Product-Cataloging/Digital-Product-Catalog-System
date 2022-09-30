class UsersController < ApplicationController
    include Common

    private

    def model_params
        params.require(:payload).permit(:username, :email, :password_digest, :user_type, :is_active)
    end
end
