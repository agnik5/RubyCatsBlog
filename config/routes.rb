Rails.application.routes.draw do
  
  resources :posts do
    resources :comment
  end
  
  root "posts#index"

end
