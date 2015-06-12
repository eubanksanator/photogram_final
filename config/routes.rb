Rails.application.routes.draw do
  resources :followings

  resources :favoritings

  resources :comments

  resources :photos

  devise_for :users
  root 'photos#index'

  get '/my_photos' => "photos#my_own", :as => "own_photos"
  get '/favorite_photos' => "photos#my_favorites", :as => "favorite_photos"
  get '/my_timeline' => "photos#timeline", :as => "timeline"

  resources :users, :only => [:show]
  # get '/users/:id', :controller => "users", :action => "show", :as => "user"
end
