Rails.application.routes.draw do
  get 'feeds/index'
  devise_for :talents
  root to: 'pages#home'

  resources :profiles, only: [:show, :edit, :update]

  resources :companies, only: [:show, :index]

  get 'connexion', to: 'pages#connexion', as: :connexion
  # get 'feed', to: 'pages#feed', as: :feed
  get 'sandbox', to: 'pages#sandbox', as: :sandbox
  get 'companies/follow/:id', to: 'companies#follow', as: :follow
  get 'companies/unfollow/:id', to: 'companies#unfollow', as: :unfollow


end
