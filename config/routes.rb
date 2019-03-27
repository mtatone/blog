Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts

  #directs the root directory to the posts root
  root "posts#index"

end
