Rails.application.routes.draw do
  get 'dashboard/index'

  devise_for :users, controllers: {:registrations => "users"}
  resources :dashboard, :only => [:index]
  resources :chitti_users
  resources :chitti_details, :only => [:new, :create, :index]
  resources :users, :only => [:new,:create]
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
