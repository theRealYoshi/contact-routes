Rails.application.routes.draw do

  resources :users, only: [:index, :create, :show, :update, :destroy] do
    resources :contacts, only: [:index]
  end

  resources :contacts, only: [ :create, :show, :update, :destroy]


  resources :contact_shares, only: [:create, :destroy]
  # get "users", to: "users#index"
  #
  # post "users", to: "users#create"
  # get "users/new", to: "users#new"
  # get "users/:id/edit", to: "users#edit", as: :edit_user
  # get "users/:id", to: "users#show", as: :user
  #
  # patch "users/:id", to: "users#update"
  # put "users/:id", to: "users#update"
  # delete "users/:id", to: "users#destroy"


end
