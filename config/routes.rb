Rails.application.routes.draw do
  
  # set landing page (in place of welcome to Rails)
  root 'movies#index'

  # destinations
  get 'movies' => 'movies#index'
  get 'movies/new' =>'movies#new'
  post 'movies/create' => 'movies#create'
  post 'movies/watched' => 'movies#update'
  patch 'movies/delete' => 'movies#delete'
  get 'movies/confirmation' => 'movies#confirmation'

  # sessions - login/logout
  get 'users/login' => 'sessions#login'
  post 'users/login_confirmation' => 'sessions#confirmation'
  get 'users/logout' => 'sessions#logout'

  # http verb (get/post/patch) - 'resource/route' => mapped to a controller#method
  get 'users/register' => 'users#signup'
  post 'users/confirmation' => 'users#confirmation'

end
