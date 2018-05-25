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

    def matched_interests(current_profile, other_profiles)
        @user_interests = []
        matches = []

        @user.profile_interest.attributes.each do |interest, value|
            if interest != "mentor" && interest != "mentee"
                if value == true
                    @user_interests = @user_interests.push(interest)
                end
            end
        end
        other_profiles.each do |profile|
            @user_interests.each do |interest|
                if profile[interest] == true
                    matches = matches.push(profile)
                end
            end
        end
        @matches = matches.uniq.sort!{ |a,b| b.score <=> a.score }
    end
end
