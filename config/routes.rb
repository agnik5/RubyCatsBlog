Rails.application.routes.draw do
  
  devise_for :users
  resources :posts do
    resources :comment
  end
  
  root "posts#index"
  
  get '/about', to: 'pages#about'

  get 'feed.rss', to: 'feeds#rss', :format => 'rss'

end
