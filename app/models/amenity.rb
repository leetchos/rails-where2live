class Amenity < ApplicationRecord
  has_many :neighborhood_amenities, dependent: :destroy
end
