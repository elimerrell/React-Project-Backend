Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  namespace :api do
    namespace :v1 do
      resources :users
      resources :groups
      resources :notebooks do 
        resources :notes
      end
    end
  end
end
