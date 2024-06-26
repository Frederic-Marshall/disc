# frozen_string_literal: true

class BrandsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_brand, only: %i[show edit update destroy]

  def index
    @brands = Brand.all
  end

  def show; end

  def new
    @brand = Brand.new
  end

  def edit; end

  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      redirect_to brand_url(@brand), notice: "Brand was successfully created." 
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def update
    if @brand.update(brand_params)
      redirect_to brand_url(@brand), notice: "Brand was successfully updated."
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
    @brand.destroy!

    redirect_to brands_url, notice: "Brand was successfully destroyed." 
  end

  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:name, :byname)
  end
end
