Rails.application.routes.draw do
  resources :alien_groups
  resources :planets do
    #write nested routes
    #get '/cool-awesome-route/:slug', to: 'planets#awesome', as: "nice"
    resources :alien_groups, only: [:index, :show, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
