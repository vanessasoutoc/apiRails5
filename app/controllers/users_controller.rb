class UsersController < ApplicationController
    before_action :authenticate_request, except: [:create]
    # GET /pets
    def index
        @users = User.all

        render json: @users
    end

    def create 
        user_params.inspect
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirm)

    end

end
