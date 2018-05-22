class PrivateChatRoom <
    belongs_to :user
    has_many :private_messages, dependent: :destroy
end
