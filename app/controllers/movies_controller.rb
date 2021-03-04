class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    # Here I am excluding my own VHS
    @movies = Movie.where.not(user: current_user).order('created_at DESC')
    # here I am taking all the movies that have been geocoded
    # for each movie I am creating a hash with lat & long
    @markers = @movies.geocoded.map do |movie|
      {
        lat: movie.latitude,
        lng: movie.longitude,
        # here I am adding info about the movie that I can see when hover a marker
        infoWindow: render_to_string(partial: "info_window", locals: { movie: movie })
      }
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
