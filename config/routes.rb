Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'static#index'
  resources :users
  resources :clans
  # get '/user/:id' => 'user#show'
end
