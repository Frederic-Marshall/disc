# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'

  resources :brands
  resources :categories
  resources :posts do
    resources :comments, only: %i[create destroy]
  end

  resources :products do
    member do
      # remove_image_product_path(image)
      delete :remove_image
    end
  end

  devise_for :users

  get 'favorites/update'
  get 'user/:id' => 'users#show', as: :user
  get 'up' => 'rails/health#show', as: :rails_health_check
end
