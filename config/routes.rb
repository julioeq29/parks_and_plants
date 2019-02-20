Rails.application.routes.draw do
  get 'plants/create'
  resources :gardens, only: [:index, :show, :new, :create] do
    resources :plants, only: [:new, :create]
  end
end
