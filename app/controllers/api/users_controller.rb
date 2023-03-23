module Api
  class UsersController < ApplicationController
    def create
      user = user.new(users_params)
      if user.save
        render json: { success: true }
      else
       render json: { errors: user.errors.full_messages }
               status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end
