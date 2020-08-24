Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'items#index'
  resources :users, only: [:show, :edit, :update]
  resources :items do
    resources :purchases, only:[:index, :create]
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
