class ProfileInterestsController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @user = User
    end

    def show
        @user = User.find(user_params)
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to '/users/profiles'
    end

    def destroy
        @user = User.find(params[:id])
        @user.delete
        redirect_to '/layout/application'
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :user_id)
    end

    # def user_params
    #     params.require(:user).permit(:first_name, :last_name, :username, :email, :encrypted_password, :avatar, :about, :mentor_id) / or :mentee_id
    # end

end