Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:show, :edit, :update]
  resources :types, only: [:index, :show]
  resources :items do
    resources :purchases, only:[:index, :create]
    resources :comments, only: :create
    resources :likes, only: [:destroy, :create]
    collection do
      get 'search'
    end
  end  
end
