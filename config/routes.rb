# frozen_string_literal: true

Rails.application.routes.draw do
<<<<<<< HEAD
  resources :posts do
    resources :comments, only: %i[create destroy]
  end

  get 'user/:id' => 'users#show', as: :user
  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  root 'posts#index'
=======
  root 'posts#index'

  resources :products
  resources :posts do
    resources :comments, only: %i[create destroy]
  end
  devise_for :users

  get 'user/:id' => 'users#show', as: :user
  get 'up' => 'rails/health#show', as: :rails_health_check
>>>>>>> a9546bd (artek_discuss)
end
