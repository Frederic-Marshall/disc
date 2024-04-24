# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments # rubocop:disable Rails/HasManyOrHasOneDependent
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :desc, presence: true, length: { minimum: 10 }
end
