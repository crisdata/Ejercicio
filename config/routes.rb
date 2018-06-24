Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items # no entiendo muy bien esta parte.
  end

  root 'todo_lists#index' # Quitamos el complemento del servidor en el enlace
end
