class UsersController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home, :show]

    def home
       
    end

    def show
        @user = User.find_by_profile_name(id)
    end

    def profile
        @user = current_user
        @interests = ProfileInterest.where(:user_id => current_user.id)
        @mentors = ProfileInterest.where(:mentor => true)
        @mentees = ProfileInterest.where(:mentee => true)
        @users = User.all
    end


    private

    def user_params
        params.require(:user).permit(
          :first_name, :last_name, :username, :email, :password
          # profile_interest_attributes: [ :python, :javascript, :react, :rails, :sql, :java, :node_js, :scss, :data_scraping, :blockchain]
        )
    end
end
