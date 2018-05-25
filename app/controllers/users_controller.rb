class UsersController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home, :show]
    before_action :set_other_user, only: [:show]
    def home

    end

    def show
        puts "i'm in the in show"
        @other_user = User.find(params[:id])
    end

    def profile
        @user = current_user
        @interests = ProfileInterest.find_by(:user_id => current_user.id)
        @users = User.all
        if @interests.mentor == true
            @results = ProfileInterest.where(:mentee => true)
        else
            @results = ProfileInterest.where(:mentor => true)
        end
    end


    private
    def set_other_user
        @other_user = User.find_by(params[:user_id])
    end
    def user_params
        params.require(:user).permit(
          :first_name, :last_name, :username, :email, :password
          # profile_interest_attributes: [ :python, :javascript, :react, :rails, :sql, :java, :node_js, :scss, :data_scraping, :blockchain]
        )
    end
end
