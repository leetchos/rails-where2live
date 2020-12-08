class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews
  has_one_attached :photo
  has_many :messages, dependent: :destroy
  has_many :user_amenities
  belongs_to :neighborhood, optional: true
  has_many :amenities, through: :user_amenities
end
