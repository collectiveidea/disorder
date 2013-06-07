Disorder::Application.routes.draw do
  resources :articles
  resources :signups
  resources :companies, :users
  
  namespace :api do
    resources :companies
  end
  
  root :to => "signups#new"
end
