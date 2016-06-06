# frozen_string_literal: true
CheckSmarterApi::Application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :users, except: [:index] do
        resources :checklists
      end
    end
  end
end
