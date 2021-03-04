class DashboardsController < ApplicationController
  def show
    # @bookings = Booking.where(user: current_user).order('created_at DESC')
    @bookings = current_user.bookings.order(created_at: :desc)
    # SELECT * FROM bookings
    # INNER JOIN movies ON bookings.movie_id = movies.id
    # WHERE movies.owner_id = current_user.id
    @rentings = Booking.joins(:movie).where(movies: { owner: current_user }).order(created_at: :desc)
  end
end
