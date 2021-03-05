class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_movie, only: [:show]

  def index
    if params[:query].present?
      @movies = Movie.search_by_title_and_description(params[:query])
      # Here I am excluding my own VHS
      # @movies = Movie.where.not(user: current_user).order('created_at DESC')
    else
      @movies = Movie.all.order('created_at DESC')
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
