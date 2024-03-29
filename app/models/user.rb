class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  has_many :active_relationships, class_name: "FollowFollower", foreign_key: "followed_id", dependent: :destroy
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "FollowFollower", foreign_key: "follower_id", dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :followed
  
end
