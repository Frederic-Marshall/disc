# frozen_string_literal: true

class Brand < ApplicationRecord
  validates :name, :byname, uniqueness: true, presence: true # rubocop:disable Rails/UniqueValidationWithoutIndex

  has_many :products, dependent: :destroy
end
