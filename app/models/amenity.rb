class Amenity < ApplicationRecord
  has_many :neighborhood_amenities, dependent: :destroy
  has_many :user_amenities
end
