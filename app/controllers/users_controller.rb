class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        @users = User.all
        render json: @users.as_json(except: :dreams), status: 200
    end

    def show 
        if current_user
            render json: current_user, status: :ok
        else
            render json: { error: 'No active session' }, status: :unauthorized
        end
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        @user.destroy
    end

    private

    def render_not_found_response
        render json: { error: "user not found" }, status: :not_found
    end

    def user_params
        params.permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end
end