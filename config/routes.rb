Rails.application.routes.draw do
  resources :links, only: [:create, :index]
  get '/links/:id', to: 'links#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
