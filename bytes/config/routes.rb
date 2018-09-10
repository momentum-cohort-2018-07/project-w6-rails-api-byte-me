Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bytes do
        resources :comments
      end 
      resources :users do
        member do
          get :following, :followers
        end
      resource :session, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    end
  end
end
end
