# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments # rubocop:disable Rails/HasManyOrHasOneDependent
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :desc, presence: true, length: { minimum: 10 }

  has_rich_text :desc
  has_many :comments, dependent: :destroy
  belongs_to :user

  def formated_created_at
    created_at.strftime('%m/%d/%Y %H:%M')
  end
end
