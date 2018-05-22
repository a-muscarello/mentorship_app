
class UsersController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home]

    def home

    end

    def profile
        @user = current_user
        @interests = ProfileInterest.where(:user_id => current_user.id)
    end


    private

    def user_params
        params.require(:user).permit(
          :first_name, :last_name, :username, :email, :password
          # profile_interest_attributes: [ :python, :javascript, :react, :rails, :sql, :java, :node_js, :scss, :data_scraping, :blockchain]
        )
    end
end