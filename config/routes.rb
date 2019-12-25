Rails.application.routes.draw do

  mount ActionCable.server =>  '/cable'

  root 'store#index'

  get 'categories/:tag', to: 'ads#index', as: :tag
  get 'bookmarks/update'
  get '/messages', to: 'chats#index'

  resources :ads
  resources :messages, only: [:create]

  devise_for :users, controllers: {registrations:'registrations'}
  resources :users do
    resources :chats, only: [:index, :show, :create]
  end
  
end
