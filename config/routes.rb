Rails.application.routes.draw do
    
    root 'users#home'
    get 'users/profile', to: 'users#profile' 

    devise_for :users, controllers: {
        sessions: 'users/sessions',
        passwords: 'users/passwords',
        registrations: 'users/registrations'
    }

    resources :profile_interests


    # namespace :profile_interest do
    #     root to: "profile_interests#index"
    # end

    # resources :users do
    #     resources :profile_interest
    # end
end
