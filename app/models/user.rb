class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :email, uniqueness: true

  has_secure_password

end