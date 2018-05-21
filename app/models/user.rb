class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile_interest

  # has_one :profile
  # after_create :build_profile

  # def build_profile
  #   Profile.create(user: self)
  # end
end
