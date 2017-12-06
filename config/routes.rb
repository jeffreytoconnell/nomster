Rails.application.routes.draw do
  get 'photos/new'

  devise_for :users
  root 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: :show
end
