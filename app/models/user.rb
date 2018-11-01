class User < ApplicationRecord

  validates :name, :email, :password_digest, :admin, presence: true
  validates :email, uniqueness: true
  validates :admin, inclusion: { in: [true, false] }

  has_secure_password
end
