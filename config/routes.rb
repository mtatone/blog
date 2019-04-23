Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do 
    resources :comments
    # , :except => [:update, :detroy]
  end
  # resources :post, :has_many => [:comments]
  # resources :comments, :only => [:update, :destroy]
  #directs the root directory to the posts root
  root "posts#index"

  root "comments#index"

  get '/about', to: 'pages#about'
end
