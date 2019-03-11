Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/most-recent-flight' => 'flights#most_recent'

  get '/auth/facebook/callback' => 'sessions#create'

  resources :pilots , only: [:new, :create]
  resources :flights, only: [:new, :create, :show, :edit, :update]

  resources :airplanes, only: [:index, :show] do
    resources :squawks, only: [:new, :create, :index]
  end

end
