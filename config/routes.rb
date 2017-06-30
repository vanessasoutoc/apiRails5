Rails.application.routes.draw do


  resources :planos
    post 'authenticate', to: 'authentication#authenticate'

    resources :pets
    resources :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
