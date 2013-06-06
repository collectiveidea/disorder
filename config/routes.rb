Disorder::Application.routes.draw do
  resources :signups
  resources :companies, :users
  root :to => "signups#new"
end
