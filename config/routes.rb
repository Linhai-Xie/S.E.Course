Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/about', to: 'static_pages#about'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :microposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/microposts', to: 'microposts#index'
  get '/new_micropost', to: 'microposts#new'
  post '/new_micropost', to: 'microposts#create'
  get '/edit_micropost', to: 'microposts#edit'
  patch '/edit_micropost', to: 'microposts#update'
end
