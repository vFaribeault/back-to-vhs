class Owner::MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    # Need to provide the current user in order to add an owner
    @movie.owner = current_user
    if @movie.save
      redirect_to movies_path, notice: 'movie was successfully created.'
    else
      render :new
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :photo, :price_per_day, :address)
  end
end
