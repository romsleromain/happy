Rails.application.routes.draw do
  devise_for :talents
  root to: 'pages#home'

  resources :profiles, only: [:show, :edit, :update]

  get 'connexion', to: 'pages#connexion', as: :connexion
  get 'sandbox', to: 'pages#sandbox', as: :sandbox
end
