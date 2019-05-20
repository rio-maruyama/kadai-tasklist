Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/create'
  # get 'toppages/index'
  
  # root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  
  
  root to: 'tasks#index'
  
  resources :tasks
  

  
  # get 'tasks/:id', to: 'tasks#show'
  # post 'tasks', to: 'tasks#create'
  # put 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'tasks',to: 'tasks#index'
  # get 'tasks/new', to: 'tasks#new'
  # get 'tasks/:id/edit',to: 'tasks#edit'
end
