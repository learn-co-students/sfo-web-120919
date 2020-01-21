class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password_confirmation, presence: true
  validates :password, presence: true
  has_secure_password

  # def password=
  # end

  # def authenticate
  # end
end
