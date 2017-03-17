Rails.application.routes.draw do
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
