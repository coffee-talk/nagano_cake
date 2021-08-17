Rails.application.routes.draw do
  
  devise_for :admins, path: 'admins', controllers: {
    sessions: "admins/sessions",
    registrations: "admins/registrations"
  }
  
  namespace :admin do
    get 'top' => 'homes#top'
    resources :customers
    resources :products
    resources :genres
    resources :orders
    resources :order_details
  end
  
  
  devise_for :customers, path: 'customers', controllers: {
    sessions: "public/sessions",
    registrations: "public/registrations"
  }
  
   scope module: :customer do
    root 'public/homes#top'
    get 'about' => 'public/homes#about'
    resources :customers
    resources :products
    resources :cart_items
    resources :orders
    resources :receivers
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
