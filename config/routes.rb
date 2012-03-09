Todone::Application.routes.draw do
    
  devise_for :users
  
  root :to => "lists#index"
  resources :lists do
    resources :tasks do
      member do
        put "toggle_completed"
      end
    end
  end
  
  #match :toggle_completed => "tasks#completed"

end
