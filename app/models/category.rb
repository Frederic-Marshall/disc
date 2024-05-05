# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name, uniqueness: true, presence: true # rubocop:disable Rails/UniqueValidationWithoutIndex

  has_many :products, dependent: :destroy
  has_ancestry
end
