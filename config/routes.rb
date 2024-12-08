Rails.application.routes.draw do
  get "documentaryfilms/index"
  get "documentaryfilms/create"
  get "documentaryfilms/new"
  get "series/index"
  get "series/create"
  get "series/new"
  get "movies/index"
  get "movies/create"
  get "movies/new"

  post "movies", to:"movies#create"
  post "series",  to:"series#create"
  post "documentary_films",  to:"documentaryfilms#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "movies#new"
end
