class MoviesController < ApplicationController
  before_action :load_movie, only: [:update, :edit, :show]

  def index
    @movies = Movie.search_for(params[:q])
  end

  def new
    @movie = Movie.new
  end

  def show
  end 

  def create

  end

  def edit
  end

  def update
    @movie.update movie_params
    redirect_to @movie
  end



  private

  def safe_movie_params
    params.require('movie').permit(:title, :description, :year_released, :rating)
  end

  def load_movie
    @movie = Movie.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid Movie ID #{params[:id]}"
    redirect_to root_path
  end

 
end
