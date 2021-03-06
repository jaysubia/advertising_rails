class Administrator < ApplicationRecord
	has_secure_password
	has_many :reps
	has_many :users
	has_many :rep_users, through: :reps, source: :users

	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

	validates :first_name, :last_name, presence: true, length: {minimum: 2}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: EMAIL_REGEX }

end
