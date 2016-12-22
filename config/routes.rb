Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#index'

  post '/products' => 'products#create'
  get '/products' => 'products#index'

  get '/reps' => 'reps#index'

  get '/administrators/index' => 'administrators#index'
end
