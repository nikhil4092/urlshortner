Rails.application.routes.draw do
  resources :users, only: [:create, :index, :show]
  resources :links, only: [:create, :index]
  get ':key', to: 'links#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
