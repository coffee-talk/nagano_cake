Rails.application.routes.draw do

  devise_for :admins, path: 'admins', controllers: {
    sessions: "admins/sessions",
    registrations: "admins/registrations"
  }

  devise_for :customers, path: 'customers', controllers: {
    sessions: "public/sessions",
    registrations: "public/registrations"
  }

  namespace :admin do
    get 'top' => 'homes#top'
    resources :customers, only: [:index, :show, :edit, :update]
    resources :products, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
  end

  scope module: :public do
    root 'homes#top'
    get 'about' => 'homes#about'
    resources :customers, only: [:show, :edit, :update, :quit, :quit_update]
    resources :products, only: [:index, :show]
    resources :cart_items, only: [:index, :update, :destroy, :all_destroy, :create]
    resources :orders, only: [:new, :confirm, :complete, :create, :index, :show]
    resources :receivers, only: [:index, :edit, :create, :update, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
