Rails.application.routes.draw do

  devise_for :people, controllers: { sessions: "sessions", passwords: "passwords" }


  namespace :admin do

    #devise_for :people, controllers: { sessions: 'sessions' }
    resources :movies
    resources :people
    resources :directors_movies
    resources :producers_movies
    resources :castings

    root to: "movies#index"
  end

  namespace :v1 do
    resources :movies
    resources :people
    resources :sessions, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
