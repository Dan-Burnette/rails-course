Rails.application.routes.draw do

 root :to 'users#index'
 
 resources :users, :cohorts do
  resources :memberships, :only => [:create, :destroy]
 end

end
