Rails.application.routes.draw do

  root 'pages#index'

  get 'comments/index'

  get 'comments/new'

  get 'comments/edit'

  get 'comments/show'

  get 'posts/index'

  get 'posts/new'

  get 'posts/edit'

  get 'posts/show'

  get 'pages/index'

  resources :posts do
      resources :comments
    end
 
  root 'pages#index'

  # match all
  match ':controller(/:action(/:id))', :via => :get
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
