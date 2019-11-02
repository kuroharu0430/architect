Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :customers
  get 'customers/show'
  ActiveAdmin.routes(self)
  root to: "products#index"
    resources :products
    resources :messages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

