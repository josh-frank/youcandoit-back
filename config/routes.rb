Rails.application.routes.draw do

  #### Users ####
  get "users/", to: "users#index"
  get "users/:id", to: "users#show"

  #### Todos ####
  get "todos/:id", to: "todos#show"

end
