Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root 'pages#home'
  get 'rails-items', to: 'portfolios#rails'

  resources :portfolios
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#home'
  get 'contact', to: 'pages#contact'
end
