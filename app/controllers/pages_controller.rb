class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    films = Movie.where(release_year: (1990..1999))
    @movies = films.first(6)
  end
end
