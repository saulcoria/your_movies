Rails.application.routes.draw do
  resources :movies
  namespace :v1 do
    resources :people
  end
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
