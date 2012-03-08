Todone::Application.routes.draw do
  
  post "tasks/create"

  get "tasks/edit"

  get "tasks/destroy"
  
  devise_for :users

  root :to => "lists#index"
  resources :lists do
    resources :tasks
  end

end
