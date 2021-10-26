class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        @users = User.all
        render json: @users, status: 200
    end

    def show 
        @user = user.find(params[:id])
        render json: @user, status: 200
    end

    private

    def render_not_found_response
        render json: { error: "user not found" }, status: :not_found
    end
end