# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, :bytitle, length: { minimum: 5 }, presence: true
  validates :description, length: { minimum: 50 }, presence: true

  has_many_attached :images
  has_many :favorites, dependent: :destroy

  belongs_to :brand
  belongs_to :category
end
