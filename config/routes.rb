Rails.application.routes.draw do
  resources :ads
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'store#index'
  get 'categories/:tag', to: 'ads#index', as: :tag
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
