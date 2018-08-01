 Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/users/new', to: 'users#new'
  post '/users/new', to: 'users#create'
  get '/users/error', to: 'users#error'
  post '/users/error', to: 'users#new'
  get '/users/:username', to: 'users#show'

end
