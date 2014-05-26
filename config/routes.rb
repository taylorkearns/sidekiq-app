SidekiqApp::Application.routes.draw do
  require "sidekiq/web"
  mount Sidekiq::Web => "/jobs"

  resources :articles

  root to: "articles#index"
end
