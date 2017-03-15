Rails.application.routes.draw do
  root 'pages#home'

  resources :portfolios
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#home'
  get 'contact', to: 'pages#contact'
end
