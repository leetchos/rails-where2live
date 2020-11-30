class Neighborhood < ApplicationRecord
  has_many :cities
  has_many :neighborhood_amenities
end
