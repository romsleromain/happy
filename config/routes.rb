Rails.application.routes.draw do
  get 'feeds/index'
  devise_for :talents
  root to: 'pages#home'

  resources :profiles, only: [:show, :edit, :update]

  get 'connexion', to: 'pages#connexion', as: :connexion
  # get 'feed', to: 'pages#feed', as: :feed
  get 'sandbox', to: 'pages#sandbox', as: :sandbox
end
