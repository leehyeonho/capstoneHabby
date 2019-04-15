Rails.application.routes.draw do
  root :to => "home#index"
  get 'member/signup'
  get 'home/index'
  post 'member/signup' => 'member#create'
  get 'member/login/:email' => 'member#login'

  get 'session/new'
  get 'login' => 'session#create'
  post '/login' => 'session#create'
  delete 'logout' => 'session#destroy'
  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
