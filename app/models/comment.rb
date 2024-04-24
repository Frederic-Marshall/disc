# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, presence: true, length: { minimum: 20 }

  def formated_created_at
    created_at.strftime('%m/%d/%Y %H:%M')
  end
end
