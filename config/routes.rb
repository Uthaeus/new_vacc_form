Rails.application.routes.draw do
  resources :players
  resources :boards
  resources :comments
  resources :discussions
  resources :user_forms
  devise_for :users
  resources :vaccinations
  root to: 'pages#home'

  get 'pages/index'
  get 'pages/tictac'

  mount ActionCable.server => '/cable'
end
