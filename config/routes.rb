Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/index' => 'home#index'
  get "/home/follower/:user_id" => 'home#showfollower'
  get "/home/following/:user_id" => 'home#showfollowing'
  get 'home/createfollow/:follower_id/:following_id' => 'home#createfollow'
  get 'home/deletefollow/:follower_id/:following_id' => 'home#deletefollow'
end
