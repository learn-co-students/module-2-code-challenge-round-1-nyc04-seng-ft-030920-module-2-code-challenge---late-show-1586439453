Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :guests, only: [:index]
  # resources :episodes, only: [:index]
  get '/guests', to: 'guests#index', as: 'guests'
  get '/guests/new', to:'guests#new', as: "new_guest"
  post '/guests', to: 'guests#create'
  get '/guests/:id', to: 'guests#show', as: 'guest'
  

  get '/episodes', to: 'episodes#index', as: 'episodes'
  get '/episodes/new', to: 'episodes#new', as: 'new_episode'
  post '/episodes', to: 'episodes#create'
  get '/episodes/:id', to: 'episodes#show', as: 'episode'

  get '/appearances', to: 'appearances#index', as: 'appearances'
  get '/appearances/new', to: 'appearances#new', as: 'new_appearance'
  post '/appearances', to: 'appearances#create'


  
end
