Rails.application.routes.draw do

  get 'qr/index'

  mount Ckeditor::Engine => '/ckeditor'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'users/new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'users#new'
  get    'manage'  => 'manage#main'

  get 'single_texts/edit'
  get 'single_texts/update'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'manage/main'

  get 'welcome/index'
  get 'welcome/guid'
  get 'qr/index'

  get 'auth/login_email'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  resources :mags

  resources :sessions, only: [:create, :destroy]
  resource :who_ru, only: [:show]
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  
  resources :sessions, only: [:create, :destroy]
  resources :users
  resources :comments

  #get 'auth/:provider/callback', to: 'sessions#create'
  #get 'auth/google_login/callback', to: 'sessions#create'
  #get 'auth/failure', to: redirect('/')
  #get 'signout', to: 'sessions#destroy', as: 'signout'


end
