
Rails.application.routes.draw do

  devise_for :users
  as :user do
  get 'login', to: 'devise/sessions#new'
  devise_scope :user do
  delete 'logout', to: 'devise/sessions#destroy'
end
end
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
  resources :orders, only: [:index, :show, :create, :destroy]
  #extra end-------
  end
