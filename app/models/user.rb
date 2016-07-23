class User < ApplicationRecord
  has_secure_password
  before_validation :set_auth_token

  validates :username, presence: true
  validates :password_digest, presence: true
  validates :authtoken, presence: true

  has_many :comments
  has_many :likes

  private

  def set_auth_token
    if self.authtoken.nil?
      self.authtoken = generate_auth_token
    end
  end

  def generate_auth_token
    SecureRandom.uuid.delete("-")
  end
end
