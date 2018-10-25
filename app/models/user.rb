class User < ApplicationRecord
  attr_accessor :password
  attr_reader :email, :name, :admin

  validates :name, :email, :password, :admin, presence: true
  validates :email, uniqueness: true
  validates :admin, inclusion: { in: [true, false] }

  has_secure_password
end
