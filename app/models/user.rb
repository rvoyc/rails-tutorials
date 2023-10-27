class User < ApplicationRecord
  before_save { email.downcase! }
  has_many :microposts

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }

  # def print
  #   puts 'test'
  # end
  # def initialize(attributes = {})
  #   # @name  = attributes[:name]
  #   # @email = attributes[:email]
  # end

  # def formatted_email
  #   "#{@name} <#{@email}>"
  # end
end