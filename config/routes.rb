Rails.application.routes.draw do

  root to: 'homes#top'
  get '/top'              => 'homes#top'
  resources :lists
end
