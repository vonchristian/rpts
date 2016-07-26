Rails.application.routes.draw do
  devise_for :users
  root to: "taxpayers#index"
  resources :taxpayers do
    resources :lands, module: :properties
  end
  namespace :properties do
    resources :lands
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
