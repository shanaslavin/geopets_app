Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get 'map', :to => ('posts#map')
  get 'api', :to => ('posts#index_json')
  root "posts#index"
end
