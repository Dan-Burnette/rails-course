Rails.application.routes.draw do

  resources :users do
    resources :bikes, :only => [:create, :destroy]
  end

root to: 'users#index'

# get '/users', to: 'users#index'

# post '/users', to: 'users#create' 

# get '/user/:id', to: 'users#show', as: 'user'

# post '/user/:id/bikes', to: 'bikes#create' 

# delete '/user/:id/bikes/:id', to: 'bikes#destroy', as: 'destroy'

end
