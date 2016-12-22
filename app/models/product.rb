class Product < ApplicationRecord
  belongs_to :rep
  geocoded_by :street_address
  after_validation :geocode
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode  # auto-fetch address

  

end # end class
