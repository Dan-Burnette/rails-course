Metube::Application.routes.draw do

  root to: "videos#index"

  resources :videos

  resources :sounds

  # get "/videos", to: "videos#index"

  # get "/videos/new", to: "videos#new"

  # get "/videos/:id", to: "videos#show"

  # post '/videos', to: "videos#create"

  # get "/videos/:id/edit", to: "videos#edit"

  # put "/videos/:id", to: "videos#update"

  # delete 'videos/:id', to: "videos#destroy"

end
