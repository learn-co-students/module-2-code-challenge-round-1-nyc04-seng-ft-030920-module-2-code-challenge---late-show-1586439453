Rails.application.routes.draw do
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index , :new , :show , :create , :update , :destroy]
  resources :episodes, only: [:index , :new , :show , :create , :update , :destroy]
  resources :appearances, only: [:index , :new , :create , :show ]
end
