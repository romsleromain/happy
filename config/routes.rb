Rails.application.routes.draw do

  resources :feeds, only: :index

  devise_for :talents
  root to: 'pages#home'

  resources :profiles, only: [:show, :edit, :update]

  resources :companies, only: [:show, :index]

  resources :job_offers, only: [:show, :destroy]

  get 'connexion', to: 'pages#connexion', as: :connexion
  get 'sandbox', to: 'pages#sandbox', as: :sandbox
  get 'companies/follow/:id', to: 'companies#follow', as: :follow
  get 'companies/unfollow/:id', to: 'companies#unfollow', as: :unfollow

  require "sidekiq/web"
  authenticate :talent, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
