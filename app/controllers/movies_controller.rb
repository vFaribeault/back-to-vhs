class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    # Here I am excluding my own VHS
    # @movies = Movie.where.not(user: current_user).order('created_at DESC')
    @movies = Movie.all.order('created_at DESC')
  end

  def show
    @booking = Booking.new
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
