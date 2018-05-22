Rails.application.routes.draw do

  get 'private_chat_rooms/index'
  get 'private_chat_rooms/new'
  get 'private_chat_rooms/create'
  get 'private_chat_rooms/show'
  get 'chat_rooms/index'
  get 'chat_rooms/new'
  get 'chat_rooms/create'
  get 'chat_rooms/show'
    root 'users#home'
    get 'users/profile', to: 'users#profile'

    devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
        registrations: 'users/registrations'
    }

    resources :profile_interests
    resources :chat_rooms, only: [:new, :create, :show, :index]
    resources :private_chat_rooms, only: [:new, :create, :show, :index]
    resources :connections, only: [:new, :create, :show, :edit, :update, :index]

    mount ActionCable.server => '/cable'

    # namespace :profile_interest do
    #     root to: "profile_interests#index"
    # end

    # resources :users do
    #     resources :profile_interest
    # end
end
