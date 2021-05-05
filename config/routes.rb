Rails.application.routes.draw do
  resources :books
  resources :articles
resources :todos
  get '/completed/:id', to:'completed#update',as: 'update_completed'
  resources :tweets do
    resource :like
    resource :retweet
  end
  post 'shares/start'
  resources :shares
  resources :items

  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
