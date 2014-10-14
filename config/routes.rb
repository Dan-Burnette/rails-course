Metube::Application.routes.draw do

  root to: "videos#index"

  get "/videos", to: "videos#index"

  get "/videos/new", to: "videos#new"

  get "/videos/:id", to: "videos#show"

  post '/videos', to: "videos#create"

end
