# frozen_string_literal: true

class FavoritesController < ApplicationController
  layout false

  def update # rubocop:disable Metrics/MethodLength
    @favorite = Favorite.where(product: Product.find(params[:product]), user: current_user)

    if @favorite == []
      # Create
      Favorite.create(product: Product.find(params[:product]), user: current_user)
      @favorite_exists = true
    else
      @favorite.destroy_all
      @favorite_exists = false
    end

    respond_to do |format|
      format.html { redirect_to products_path(params[:product]) }
      format.js
    end
  end
end
