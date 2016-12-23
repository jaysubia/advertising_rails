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

  get '/reps/new' => 'reps#new'
  get '/administrators/new' => 'administrators#new'

  get '/administrators' => 'administrators#index'

  get 'users/index'


  get '/profile' => 'sessions#profile'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/reps' => 'reps#index'
  post '/reps/:id' => 'reps#add_photo'
  get '/reps/:id/edit' => 'reps#edit'

  patch '/reps/:id' => 'reps#update'
  get '/products/:id/edit' => 'products#edit'
  get '/profile/:id' => 'sessions#profile'

  get '/products/:id' => 'products#show'

  get '/reps/:id/show' => 'reps#show'

  post '/reps/add_photo' => 'reps#add_photo'
  
  get '/administrators/index' => 'administrators#index'
  post '/administrators/index' => 'reps#add_photo'

  get 'test' => 'sessions#test'

  resources :products
  resources :reps

end
