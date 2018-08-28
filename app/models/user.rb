class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  extend Devise::Models

  has_many :follower_relations, :foreign_key => 'following_id', :class_name => "Follow"
  has_many :followers, :through => :follower_relations, source: :follower

  has_many :following_relations, :foreign_key => 'follower_id', :class_name => "Follow"
  has_many :followings, :through => :following_relations, source: :following
end
