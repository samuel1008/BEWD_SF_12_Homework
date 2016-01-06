class MovieController < ApplicationController
  def index
  	@all_movies = Movie.all()
  end
end
