Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do 
    resources :comments, :except => [:update, :detroy]
  end

  resources :comments, :only => [:update, :destroy]
  #directs the root directory to the posts root
  root "posts#index"

  root "comments#index"
end
