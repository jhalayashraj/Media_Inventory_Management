Rails.application.routes.draw do
  resources :notifications
  resources :timeslots
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "timeslots#new"
end
