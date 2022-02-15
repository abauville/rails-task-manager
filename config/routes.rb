Rails.application.routes.draw do
  # CREATE
  get "/tasks/new/", to: "tasks#new", as: :new_task
  post "/tasks/", to: "tasks#create", as: :tasks

  # READ
  get "/tasks/", to: "tasks#index"
  get "/tasks/:id", to: "tasks#show", as: :task

  # UPDATE
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "/tasks/:id", to: "tasks#update"
  delete "/tasks/:id", to: "tasks#destroy"
end
