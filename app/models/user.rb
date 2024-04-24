# frozen_string_literal: true

class User < ApplicationRecord
<<<<<<< HEAD
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]
=======
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true
>>>>>>> a9546bd (artek_discuss)

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

<<<<<<< HEAD
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true

  attr_writer :login

=======
  attr_writer :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys: [:login]

>>>>>>> a9546bd (artek_discuss)
  def login
    @login || username || email
  end
end
