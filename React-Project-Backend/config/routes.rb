Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :notebooks do 
          resources :notes
        end
      end
    end
  end
end 
