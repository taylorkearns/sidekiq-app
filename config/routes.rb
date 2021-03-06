SidekiqApp::Application.routes.draw do
  require "sidekiq/web"
  mount Sidekiq::Web => "/jobs"

  resources :articles
  resources :snippets

  root to: "snippets#index"
end
