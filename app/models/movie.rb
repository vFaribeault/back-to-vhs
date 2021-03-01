class Movie < ApplicationRecord
  belongs_to :owner, class_name: "User" # movie.owner
  has_many :bookings
end
