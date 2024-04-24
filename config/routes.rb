# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: %i[create destroy]
  end

  get 'user/:id' => 'users#show', as: :user
  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'posts#index'
end
