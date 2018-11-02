Rails.application.routes.draw do
  namespace :admin do
    resources :castings
    resources :movies
    resources :people

    root to: "castings#index"
  end

  namespace :v1 do
    resources :movies
    resources :people
  end

  resources :castings
  resources :movies
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
