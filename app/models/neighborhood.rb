class Neighborhood < ApplicationRecord
  belongs_to :city
  has_many :neighborhood_amenities, dependent: :destroy
end
