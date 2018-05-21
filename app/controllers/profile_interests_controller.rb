class ProfileInterestsController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @user = ProfileInterest
    end

    def show
        @user = ProfileInterest.where(user_id :current_user.id)
    end

    def edit
        @user = ProfileInterest.find(params[:id])
    end

    def update
        @user = ProfileInterest.find(params[:id])
        @user.update(user_params)
        redirect_to '/show'
    end

    def destroy
        @user = ProfileInterest.find(params[:id])
        @user.delete
        redirect_to '/home'
    end

    private

    def find_user
        @user = ProfileInterest.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :user_id)
    end

    # def user_params
    #     params.require(:user).permit(:first_name, :last_name, :username, :email, :encrypted_password, :avatar, :about, :mentor_id) / or :mentee_id
    # end

end
