Rails.application.routes.draw do
  resources :notices, only: :index
end
