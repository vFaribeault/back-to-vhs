class DashboardController < ApplicationController
  def show
    @booking = Booking.where(user: current_user)
  end
end
