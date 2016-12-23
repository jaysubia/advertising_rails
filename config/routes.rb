Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'
  get '/' => 'sessions#index'

  get '/logout' => 'sessions#logout'

  post '/products' => 'products#create'
  get '/products' => 'products#index'

  get '/reps' => 'reps#index'

  get '/reps/new' => 'reps#new'
  get '/administrators/new' => 'administrators#new'

  get '/administrators' => 'administrators#index'
  get '/administrators/index' => 'administrators#index'

  get 'users/index'

  post '/users' => 'users#create'

  get '/products/:id/edit' => 'products#edit'
  get '/profile/:id' => 'sessions#profile'

  get '/products/:id' => 'products#show'


  get '/reps/:id/show' => 'reps#show'
  get '/reps/:id/edit' => 'reps#edit'


  post '/reps/add_photo' => 'reps#add_photo'

  get 'products/show' => 'products#show'
  
  patch '/reps/:id' => 'reps#update'
  get '/administrators/index' => 'administrators#index'
  post '/administrators/index' => 'reps#add_photo'

  resources :products
  resources :reps

end
