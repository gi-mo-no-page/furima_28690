Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:show, :update]
  resources :items do
    resources :purchases, only:[:index, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
