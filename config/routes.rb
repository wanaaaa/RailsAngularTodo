Rails.application.routes.draw do
  root 'application#home'

  resources :todos, only: [
    :index, :create, :update, :destroy
  ], defaults: { format: :json }
end
