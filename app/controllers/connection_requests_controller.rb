class ConnectionRequestsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_connection_request, only: [:show, :edit, :update, :destroy]

    def new
        @connection_request = ConnectionRequest.new
        @private_chat_room = PrivateChatRoom.new
    end

    def create
        @connection_request = ConnectionRequest.create(connection_request_params)
        if @connection_request.save
            @user = User.find(@connection_request[:other_user_id])
            flash[:notice] = "#{@user.name} was requested"
            redirect_to(chat_rooms_path)
        else
            render('new')
        end
    end

    def edit

    end

    def update
        @connection_request.update_attributes(connection_params)
        if @connection_request.status == "accept"
            userOne = User.find_by(id: @connection_request.user_id)
            userTwo = User.find_by(id: @connection_request.other_user_id)
            @private_chat_room = PrivateChatRoom.create(user_id: userOne.id, other_user_id: userTwo.id, title: "#{userOne.name} - #{userTwo.name}")
        end
        redirect_to(private_chat_rooms_path)
    end

    def delete
    end

    def destroy
        @connection_request.destroy
        flash[:notice] = "Connection was rejected"
        redirect_to(chat_rooms_path)
    end

    private
        def set_connection_request
            @connection_request = ConnectionRequest.find(params[:id])
        end
        def connection_request_params
            params.require(:connection_request).permit(:user_id, :other_user_id, :status)
        end
end
