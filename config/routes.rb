Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/:id', to: "cocktails#show"
    resources :cocktails, only: [:create, :index, :new, :show]
    resources :cocktails do
      resources :doses, only: [:index, :new, :create, :destroy]
    end

end
