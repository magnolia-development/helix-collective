# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # root to: "home#index"
  #
  # get "/solve" => "home#solve_index"
  # get "/solve/:id" => "home#solve_page"
  mount Maglev::Engine => "/maglev"
  get "/sitemap", to: "maglev/sitemap#index", defaults: { format: "xml" }
  get "(*path)", to: "maglev/page_preview#index", defaults: { path: "index" },
    constraints: Maglev::PreviewConstraint.new
end

