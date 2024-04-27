# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  attr_writer :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]

  def login
    @login || username || email
  end
end
