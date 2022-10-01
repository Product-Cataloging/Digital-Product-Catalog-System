class UsersController < ApplicationController
    include Common

    def login
        user = User.find_by_email(params[:email])
        if User&.find_by_email(params[:email]) && user.authenticate(params[:password])
          token = JsonWebToken.encode({ id: user.id, username: user.username, email: user.email})
          render json: { success: true, jwt: token }
        else
          render json: { success: false, errors: ['Invalid username or password !'] }
        end
    end

    private

    def model_params
        params.require(:payload).permit(:id, :username, :email, :password, :password_confirmation ,:user_type, :is_active)
    end
end
