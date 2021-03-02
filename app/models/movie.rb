class Movie < ApplicationRecord
  belongs_to :owner, class_name: "User" # movie.owner
  has_many :bookings

  validates :title, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
end
