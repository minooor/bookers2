Rails.application.routes.draw do

  devise_for :users
  root to: "home#top"


  get 'home/about' => 'home#about',as:'about'

  resources :books

  resources :users, only: [:show, :edit, :create, :index, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
