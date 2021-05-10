Rails.application.routes.draw do
  get '/characters' => 'characters#index'
  get '/characters/:id' => 'characters#show'
  get '/characters/:id' => 'characters#new' 
  post '/characters/:id' => 'characters#create'
  get '/characters/:id' => 'characters#edit' 
  patch '/characters/:id' => 'characters#update'
  delete '/characters/:id' => 'characters#delete'

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'
  get '/users/:id' => 'users#new' 
  post '/users/:id' => 'users#create'
  get '/users/:id' => 'users#edit' 
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#delete'

  get '/stats' => 'stats#index'
  get '/stats/:id' => 'stats#show'
  get '/stats/:id' => 'stats#new' 
  post '/stats/:id' => 'stats#create'
  get '/stats/:id' => 'stats#edit' 
  patch '/stats/:id' => 'stats#update'
  delete '/stats/:id' => 'stats#delete'

  get '/races' => 'races#index'
  get '/races/:id' => 'races#show'

  get '/dndclasses' => 'dndclasses#index'
  get '/dndclasses/:id' => 'dndclasses#show'

  get '/achievements' => 'achievements#index'
  get '/achievements/:id' => 'achievements#show'
  get '/achievements/:id' => 'achievements#new'
  post '/achievements/:id' => 'achievements#create'
end
