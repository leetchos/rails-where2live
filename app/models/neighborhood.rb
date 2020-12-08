class Neighborhood < ApplicationRecord
  belongs_to :city
  has_many :neighborhood_amenities, dependent: :destroy
  has_many :amenities, through: :neighborhood_amenities
  has_many :messages
end
