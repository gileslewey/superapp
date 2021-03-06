Rails.application.routes.draw do
  get 'payments/create'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }


  resources :products do
    resources :comments
  end
  resources :users
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/landing_page'

  root 'simple_pages#landing_page'

  post 'simple_pages/thank_you'

  post 'payments/create'

  get 'payments/success'
  resources :orders, only: [:index, :show, :create, :destroy]

  mount ActionCable.server => '/cable'
  end
