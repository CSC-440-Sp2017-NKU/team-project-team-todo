Rails.application.routes.draw do
  get 'home/index'

  resources :q_and_as
  resources :enrolled_classes
  resources :courses
  resources :majors
  resources :colleges
  resources :logins
  resources :login_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
