Rails.application.routes.draw do
  devise_for :users
  root to: "taxpayers#index"
  resources :taxpayers do
    resources :lands, module: :properties
    resources :buildings, module: :properties
    resources :machineries, module: :properties

  end
  resources :properties
  namespace :properties do
    resources :lands
    resources :buildings
    resources :machineries
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
