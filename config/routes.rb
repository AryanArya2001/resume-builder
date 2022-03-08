Rails.application.routes.draw do

  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'signup' => 'users#new'
  post    'signup' => 'users#create'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

resources :profiles , only: [:update,:show]
  resources :educations , only: [:new,:destroy]
  resources :experiences , only:[ :new ,:destroy]
  resources :projects , only:[ :new ,:destroy]
end
