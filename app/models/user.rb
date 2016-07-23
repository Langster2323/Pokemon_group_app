class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :password_digest, presence: true
  validates :authtoken, presence: true

  has_many :comments
  has_many :likes
end
