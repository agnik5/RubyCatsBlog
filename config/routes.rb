Rails.application.routes.draw do
  
  resources :posts do
    resources :comment
  end
  
  root "posts#index"
  
  get '/about', to: 'pages#about'

end
