class PrivateChatRoomsController < ApplicationController
    def index
        @users = User.all
        @connections = ConnectionRequest.where(other_user_id: current_user.id, state: "accept")
        @private_chat_rooms = PrivateChatRoom.where(user_id: current_user.id).or(PrivateChatRoom.where(other_user_id: current_user.id))
    end

    def new
        @private_chat_room = PrivateChatRoom.new
    end

    def create
        @private_chat_room = current_user.private_chat_rooms.build(private_chat_room_params)
        if @private_chat_room.save
            flash[:success] = 'Private chat room added!'
            redirect_to private_chat_rooms_path
        else
            render 'new'
        end
    end

    def show
        @private_chat_room = PrivateChatRoom.includes(:private_messages).find_by(id: params[:id])
        @private_message = PrivateMessage.new
    end

    private
    def private_chat_room_params
        params.require(:private_chat_room).permit(:title, :other_user_id)
    end
end
