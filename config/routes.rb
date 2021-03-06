Rails.application.routes.draw do

  resources :categories do
    resources :tasks
  end
  namespace :category do
    resources :tasks
  end
  devise_for :users
  root to: "categories#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
