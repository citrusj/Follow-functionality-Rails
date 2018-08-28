class HomeController < ApplicationController
	def index
		@users = User.all
	end
	def showfollower
		@followers = User.find(params[:user_id]).followers
	end
	def showfollowing
		@followings = User.find(params[:user_id]).followings
	end
	def createfollow
		@a = Follow.create(follower_id: params[:follower_id], following_id: params[:following_id])
		
		@a.save
		redirect_to '/'
		
	end
	def deletefollow
		follow = Follow.where(follower_id: params[:follower_id], following_id: params[:following_id]).first
		follow.destroy
		redirect_to '/'
	end

end
