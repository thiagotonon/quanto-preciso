Rails.application.routes.draw do
  resources :contacts, only: :create
  resources :notices, only: [:index, :show]
end
