Rails.application.routes.draw do
  # Pagina principal
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index'

  # Shows the create form
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # Update - 2 routes
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  get 'tasks/:id', to: 'tasks#show', as: :task

  # DESTROY the restaurant
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete_task
end
