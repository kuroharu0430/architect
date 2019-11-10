Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :customers, :controllers =>{
    registrations: 'customers/registrations',
    sessions: 'customers/sessions',
    passwords: 'customers/passwords'
  }

  get 'customers/show'
  ActiveAdmin.routes(self)
  root to: "products#index"
    resources :products
    resources :customers, only: [:show] do
      resources :messages, only: [:index, :create] do
        get :auto, on: :collection
      end
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

