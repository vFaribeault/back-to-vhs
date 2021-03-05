class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @movie = Movie.find(params[:movie_id])
    @booking.movie = @movie
    @booking.user = current_user

    if @booking.save
      flash[:alert] = 'Request submitted!'
      # when possible redirect to 'All requests'
      redirect_to dashboard_path
    else
      flash[:alert] = 'Something went wrong. Try again.'
      redirect_to movie_path(@movie)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :movie_id, :user_id, :status)
  end
end
