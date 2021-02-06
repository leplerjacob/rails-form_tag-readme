Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Test for including a post action within the resources-only array. Will it pick up on POST requests? or assume it as a GET request only
  resources :posts, only: [:index, :new, :create]

  # Alternative and possible solution to above inquiry. A POST request to the action 'create' must be specified explicitly and as a "custom" route.
  # post '/posts', to: 'posts#create', as: 'posts_path'

  # ABOVE SOLVED #
  # You rails does recognize the POST request must direct to the action 'create' in the above example 

end
