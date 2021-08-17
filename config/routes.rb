Rails.application.routes.draw do
  root 'homes#top'
  devise_for :admins, path: 'admins', controllers: {
    sessions: "admins/sessions",
    registrations: "admins/registrations"
  }
  devise_for :customers, path: 'customers', controllers: {
    sessions: "public/sessions",
    registrations: "public/registrations"
  }
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
