Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  ##############################
  # resources :merchants do
  #   resources :items, only: [:index]
  # end

  get 'merchants/:merchant_id/items', to: 'items#index', as: :merchant_items

  get '/merchants', to: 'merchants#index'
  post '/merchants', to: 'merchants#create'
  get '/merchants/new', to: 'merchants#new', as: :new_merchant
  get 'merchants/:id/edit', to: 'merchants#edit', as: :edit_merchant
  get '/merchants/:id', to: 'merchants#show', as: :merchant
  patch 'merchants/:id', to: 'merchants#update'
  delete 'merchants/:id', to: 'merchants#destroy'
  ##############################

  ##############################
  # resources :items, only: [:index, :show] do
  #   resources :reviews, only: [:new, :create]
  # end

  post '/items/:item_id/reviews', to: 'reviews#create', as: :item_reviews
  get '/items/:item_id/reviews/new', to: 'reviews#new', as: :new_item_review

  get '/items', to: 'items#index'
  get '/items/:id', to: 'items#show', as: :item

  ##############################


  ##############################
  # resources :reviews, only: [:edit, :update, :destroy]

  get '/reviews/:id/edit', to: 'reviews#edit', as: :edit_review
  patch '/reviews/:id', to: 'reviews#update', as: :review
  delete '/reviews/:id', to: 'reviews#destroy'

  ##############################

  get '/cart', to: 'cart#show'
  post '/cart/:item_id', to: 'cart#add_item'
  delete '/cart', to: 'cart#empty'
  patch '/cart/:change/:item_id', to: 'cart#update_quantity'
  delete '/cart/:item_id', to: 'cart#remove_item'

  get '/registration', to: 'users#new', as: :registration

  ##############################
  # resources :users, only: [:create, :update]

  post '/users', to: 'users#create', as: :users
  patch '/users/:id', to: 'users#update', as: :user
  ##############################

  patch '/user/:id', to: 'users#update'
  get '/profile', to: 'users#show'
  get '/profile/edit', to: 'users#edit'
  get '/profile/edit_password', to: 'users#edit_password'
  post '/orders', to: 'user/orders#create'
  get '/profile/orders', to: 'user/orders#index'
  get '/profile/orders/:id', to: 'user/orders#show'
  delete '/profile/orders/:id', to: 'user/orders#cancel'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'

  ##############################
  #Showing both the written out code within the namespace and outside the namespace

  # namespace :merchant do
    # get '/', to: 'dashboard#index', as: :dashboard

    #####################
    # resources :orders, only: :show
    # get '/orders/:order_id', to: 'orders#show', as: :order
    #####################

    #####################
    # resources :items, only: [:index, :new, :create, :edit, :update, :destroy]

    # get '/items', to: 'items#index'
    # get '/items/new', to: 'items#new'
    # post '/items', to: 'items#create'
    # get 'items/:item_id/edit', to: 'items#edit'
    # put 'items/:item_id', to: 'items#update'
    # patch 'items/:item_id', to: 'items#update'
    # delete 'items/:item_id', to: 'items#destroy'
    #####################

    # put '/items/:item_id/change_status', to: 'items#change_status'
    # get '/orders/:id/fulfill/:order_item_id', to: 'orders#fulfill'

    #####################
    # resources :discounts

    # get '/discounts', to: 'discounts#index'
    # post '/discounts', to: 'discounts#create'
    # get '/discounts/new', to: 'discounts#new'
    # get '/discounts/:id/edit', to: 'discounts#edit', as: :discounts_edit
    # get '/discounts/:id', to: 'discounts#show', as: :discount
    # patch '/discounts/:id', to: 'discounts#update'
    # put '/discounts/:id', to: 'discounts#update'
    # delete '/discounts/:id', to: 'discounts#destroy'
    #####################

  # end

  get '/merchant', to: 'merchant/dashboard#index', as: :merchant_dashboard
  get '/merchant/orders/:order_id', to: 'merchant/orders#show', as: :merchant_order
  get '/merchant/items', to: 'merchant/items#index'
  get '/merchant/items/new', to: 'merchant/items#new'
  post '/merchant/items', to: 'merchant/items#create'
  get '/merchant/items/:item_id/edit', to: 'merchant/items#edit'
  patch '/merchant/items/:item_id', to: 'merchant/items#update'
  put '/merchant/items/:item_id', to: 'merchant/items#update'
  delete '/merchant/items/:item_id', to: 'merchant/items#destroy'

  put '/merchant/items/:item_id/change_status', to: 'merchant/items#change_status'
  get '/merchant/orders/:order_id/fulfill/:order_item_id', to: 'merchant/orders#fulfill'

  get '/merchant/discounts', to: 'merchant/discounts#index'
  post '/merchant/discounts', to: 'merchant/discounts#create'
  get '/merchant/discounts/new', to: 'merchant/discounts#new'
  get '/merchant/discounts/:discount_id/edit', to: 'merchant/discounts#edit', as: :merchant_discounts_edit
  get '/merchant/discounts/:discount_id', to: 'merchant/discounts#show', as: :merchant_discount
  patch '/merchant/discounts/:discount_id', to: 'merchant/discounts#update'
  put '/merchant/discounts/:discount_id', to: 'merchant/discounts#update'
  delete '/merchant/discounts/:discount_id', to: 'merchant/discounts#destroy'
##############################

##############################
  # namespace :admin do
    #####################
    # resources :merchants, only: [:show, :update]

    # get '/', to: 'dashboard#index', as: :dashboard
    # get '/merchants/:merchant_id', to: 'merchants#show'
    # patch '/merchants/:merchant_id', to: 'merchants#update'
    # put '/merchants/:merchant_id', to: 'merchants#update'
    #####################

    #####################
    # resources :users, only: [:index, :show]

    # get '/users', to: 'users#index'
    # get '/users/:user_id', to: 'users#show'
    #####################

    # patch '/orders/:id/ship', to: 'orders#ship'

  # end

  get '/admin', to: 'admin/dashboard#index', as: :admin_dashboard
  get '/admin/merchants/:merchant_id', to: 'admin/merchants#show'
  patch '/admin/merchants/:merchant_id', to: 'admin/merchants#update'

  get '/admin/users', to: 'admin/users#index'
  get '/admin/users/:user_id', to: 'admin/users#show'

  patch '/admin/orders/:id/ship', to: 'admin/orders#ship'
##############################


end
