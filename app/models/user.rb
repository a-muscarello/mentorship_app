class User < ApplicationRecord
    has_many :chat_rooms, dependent: :destroy
    has_many :messages, dependent: :destroy

    has_many :private_chat_rooms, dependent: :destroy
    has_many :private_messages, dependent: :destroy

    has_many :connection_requests, dependent: :destroy

    has_one :profile_interest

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable


    accepts_nested_attributes_for :profile_interest
end
