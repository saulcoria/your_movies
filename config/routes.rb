Rails.application.routes.draw do
  namespace :v1 do
    resources :movies
    resources :people
  end
  resources :movies
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
