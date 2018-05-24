class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def index
    end

    protected
    def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || chat_rooms_path
    end

end
