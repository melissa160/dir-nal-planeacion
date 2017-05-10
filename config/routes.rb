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
    collection {post :import}
    collection {post :search}
    resources :projects do
      collection {post :import}
    end
  end
  #post '/makers/import', to: 'makers#import'
  
end
