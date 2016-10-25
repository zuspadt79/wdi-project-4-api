class User < ApplicationRecord
  has_secure_password
  # has_secure_password gives validation to email
  # has_secure_password gives validation to password
  # has_secure_password gives validation to password_confirmation
  validates :username, presence: true, uniqueness: true
end
