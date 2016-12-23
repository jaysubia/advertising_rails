class Product < ApplicationRecord
  belongs_to :rep
  has_many :purchases
  has_many :user_purchased, through: :purchases, source: :user

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  geocoded_by :street_address
  after_validation :geocode
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode  # auto-fetch address

   validates :zip, length: {is: 5}
end
