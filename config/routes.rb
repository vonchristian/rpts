Rails.application.routes.draw do
  root to: "taxpayers#index"
  resources :taxpayers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
