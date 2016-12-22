class Rep < ApplicationRecord
	
  has_secure_password
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
                  

  belongs_to :administrator
  has_many :products
  has_many :users

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name, :last_name, presence: true, length: {minimum: 2}
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: EMAIL_REGEX }
  validates :image, attachment_presence: true
end
