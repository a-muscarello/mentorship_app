module ApplicationHelper
    def can_see?(private_chat_room)
        current_user.id == private_chat_room.user_id || current_user.id == private_chat_room.other_user_id
    end
end
