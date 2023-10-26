class User < ApplicationRecord
  # attr_accessor :name, :email
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true

  # def initialize(attributes = {})
  #   # @name  = attributes[:name]
  #   # @email = attributes[:email]
  # end

  # def formatted_email
  #   "#{@name} <#{@email}>"
  # end
end