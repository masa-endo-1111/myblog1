Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :users, only: :show
  resources :posts, :only => [:index, :show] do
    resources :comments, :only => [:create, :destroy]
    resources :bookmarks, only: [:create, :destroy]
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
