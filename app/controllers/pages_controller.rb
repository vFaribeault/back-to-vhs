class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
    @movies = Movie.where(release_year: (1990..1999))
    @selection = @movies.first(6)
  end
end
