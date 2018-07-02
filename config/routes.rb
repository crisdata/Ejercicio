Rails.application.routes.draw do
  scope "(:locale)", locale: /en|es/ do
    devise_for :users
    resources :todo_lists do
      resources :todo_items do # no entiendo muy bien esta parte.
        member do
          patch :complete
        end
      end
    end
    root 'todo_lists#index' # Quitamos el complemento del servidor en el enlace
  end
end
