Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all restaurants
  get '/tasks', to: 'tasks#index'

  # Create a restaurant
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # See details about one restaurant
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update a restaurant
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy a restaurant
  delete '/tasks/:id', to: 'tasks#destroy'
end
