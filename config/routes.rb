Metube::Application.routes.draw do

  root to: "videos#index"

  get "/videos", to: "videos#index"

  get "/videos/:id", to: "videos#show"

  get "/videos/new", to: "videos#new"
  
  

  
end
