Rails.application.routes.draw do
  resources :questions do
    resources :answers, :only => [:create, :destroy]
  end
  
  
  
  #logging in and out for sessions
  #get 'login' => 'user_sessions#new'
  #post 'login' => 'user_session#create'
  #delete 'logout' => 'user_sessions#destroy'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "questions#index"
end
