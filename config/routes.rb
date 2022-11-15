Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #En tant qu’utilisateur, je peux lister des tâches
  # En tant qu’utilisateur, je peux afficher les détails d’une tâche
  # En tant qu’utilisateur, je peux ajouter une nouvelle tâche
  # En tant qu’utilisateur, je peux éditer une tâche (la marquer comme terminée / mettre à jour le titre et les détails)
  # En tant qu’utilisateur, je peux supprimer une tâche
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new",  as: :new_task
  post "tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show", as: :task
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch  "tasks/:id",      to: "tasks#update"
  delete "tasks/:id",      to: "tasks#destroy"
end
