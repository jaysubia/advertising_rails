class Rep < ApplicationRecord
  has_secure_password
  
  belongs_to :administrator
  has_many :users

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :last_name, presence: true, length: {minimum: 2}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: EMAIL_REGEX }
end
