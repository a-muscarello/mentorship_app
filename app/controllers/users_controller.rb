
class UsersController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home]

    def home

    end

    def show
        @user = User.find(params[:id])
   
    end

    # private

    # def user_params
    #     params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
    # end
    
end