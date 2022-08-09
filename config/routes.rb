Rails.application.routes.draw do
  get '/new' => 'lists#new'
  post 'lists' => 'lists#create'
  get '/lists' => 'lists#index'
  get 'lists/:id' => 'lists#show',as: 'list'
  get 'lists/edit/:id' => 'lists#edit',as: 'edit_list'
  patch 'lists/:id' => 'lists#update',as: 'update_list'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end