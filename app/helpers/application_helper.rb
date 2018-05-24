module ApplicationHelper
    def can_see?(private_chat_room)
        current_user.id == private_chat_room.user_id || current_user.id == private_chat_room.other_user_id
    end

    def can_score?(other_user_id)
        mentored1 = PrivateChatRoom.find_by(user_id: current_user.id, other_user_id: other_user_id)
        mentored2 = PrivateChatRoom.find_by(user_id: other_user_id, other_user_id: current_user.id)
        puts mentored1
        puts mentored2
        if mentored1 != nil || mentored2 != nil
            return true
        end
        return false
    end
end

