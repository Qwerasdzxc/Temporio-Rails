Rails.application.routes.draw do
  
  resources :project_statuses
  resources :contacts
  resources :companies
  resources :task_statuses
  resources :task_logs
  resources :tasks
  resources :workers
  resources :components
  resources :projects
  root 'static_pages#home'
  resources :users
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
