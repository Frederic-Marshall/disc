# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: :show

  def index; end
  def show; end

  protected

  def set_user
    @user = User.find(params[:id])
  end
end
