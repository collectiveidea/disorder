Disorder::Application.routes.draw do
  resources :signups
  resources :companies
  root :to => "signups#new"
end
