Rails.application.routes.draw do

  #### Users ####
  get "users/", to: "users#index"
  get "users/:id", to: "users#show"

  #### Todos ####
  get "todos/", to: "todos#index"
  get "todos/:id", to: "todos#show"
  post "todos/", to: "todos#create"
  patch "todos/:id", to: "todos#update"
  delete "todos/:id", to: "todos#destroy"

end
