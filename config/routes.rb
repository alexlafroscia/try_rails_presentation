Rails.application.routes.draw do

# only index and show
  root 'messages#index'

  resources :users

  resources :messages

  resources :sessions, only: [:create, :new]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  get 'logout' => 'sessions#destroy'

end
