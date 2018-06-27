Rails.application.routes.draw do
  resources :comments
  resources :discussions
  resources :user_forms
  devise_for :users
  resources :vaccinations
  root to: 'pages#home'

  get 'pages/index'

  mount ActionCable.server => '/cable'
end
