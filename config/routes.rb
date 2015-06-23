Rails.application.routes.draw do

  get 'users/new'

  get 'single_texts/edit'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'manage/main'

  get 'welcome/index'
  get 'welcome/guid'

  get 'auth/login_email'

  #devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }


  root 'welcome#index'


  resources :mags
  resources :users

  get 'auth/:provider/callback', to: 'sessions#create'
  #get 'auth/google_login/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :who_ru, only: [:show]

  #root to: "who_ru#show"
end
