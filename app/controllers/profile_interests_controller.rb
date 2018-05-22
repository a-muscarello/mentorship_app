class ProfileInterestsController < ApplicationController

    def index
        @interests = ProfileInterest.create(:user_id => current_user.id)
    end

    def show
        @interests = ProfileInterest.find(params[:id])
    end

    def new
        @interests = ProfileInterest.new
    end

    def create
        @interests = ProfileInterest.new(interests_params)
        @interests.save
        # redirect_to "/profile_interests/#{@interests.id}/"
        # redirect_to "/users/profile"
    end

    def edit
        @interests = ProfileInterest.find(params[:id])
    end

    def update
        @interests = ProfileInterest.find(params[:id])
        @interests.update(interests_params)
        redirect_to users_profile_path
        redirect_to "/users/profile"
    end

    def destroy
        @interests = ProfileInterest.find(params[:id])
        @interests.destroy
        redirect_to "/profile_interests"
    end




    private

    def interests_params
        params.require(:profile_interest).permit(:user_id, :python, :rails, :react, :node_js, :sql, :blockchain, :data_scraping, :javascript, :java, :scss, :mentee, :mentor)
    end

end
