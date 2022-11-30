Rails.application.routes.draw do
  resources :artigos
  root "artigos#index"

  resources :artigos do
    resources :comentarios
  end
end