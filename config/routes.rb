Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'
  get '/' => 'sessions#index'
  post '/sessions/login' => 'sessions#login'
  get '/logout' => 'sessions#logout'

  post '/products' => 'products#create'
  get '/products' => 'products#index'
  get '/products/:id/edit' => 'products#edit'
  get '/products/:id' => 'products#show'
  get 'products/show' => 'products#show'

  get '/administrators/new' => 'administrators#new'

  get '/administrators' => 'administrators#index'

  get 'users/index'


  get '/profile' => 'sessions#profile'

  get '/users' => 'users#index'
  post '/users' => 'users#create'
  get '/users/new' => 'users#new'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  post '/users/create' => 'users#create'
  
  get '/reps' => 'reps#index'
  post '/reps/create' => 'reps#create'
  get '/reps/new' => 'reps#new'
  post '/reps/:id' => 'reps#add_photo'
  get '/reps/:id/edit' => 'reps#edit'
  patch '/reps/:id' => 'reps#update'
  delete '/reps/:id' => 'reps#destroy'
  
  get '/products/:id/edit' => 'products#edit'
  get '/reps/:id/show' => 'reps#show'
  get '/profile/:id' => 'sessions#profile'

  get '/products/:id' => 'products#show'
  
  get '/administrators/index' => 'administrators#index'
  post '/administrators/index' => 'reps#add_photo'
  patch '/administrators/:id' => 'administrators#update'

  get 'test' => 'sessions#test'

  resources :products
  resources :reps

end
