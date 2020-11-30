class NeighborhoodAmenity < ApplicationRecord
  has_many :amenities
  belongs_to :neighborhood
end
