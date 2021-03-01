class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :movies, foreign_key: :owner_id # enables user.movies or user.movies.bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
