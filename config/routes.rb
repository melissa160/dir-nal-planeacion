Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "makers#index"

  namespace :api do
    namespace :v1 do
      resources :makers do
        resources :projects
      end 
    end
  end

  resources :makers do
    resources :projects
  end
  
end
