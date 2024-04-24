# frozen_string_literal: true

class Product < ApplicationRecord
  validates :title, length: { minimum: 5 }
  validates :bytitle, length: { minimum: 5 }
  validates :description, length: { minimum: 50 }
end
