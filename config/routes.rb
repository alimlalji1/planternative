Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: :home
  resources :products do
    resources :reviews, only: [:new, :create]
    resources :quantities, only: :create
  end
  # resources :reviews, only: :show
  resources :shopping_lists, only: [:show, :update, :destroy, :create]
  resources :reviews, only: :destroy
  get '/:nickname', to: 'pages#myprofile', as: :myprofile
end
