class MoviesWatchedController < ApplicationController
	def index
		@movies_watched = Movies_watched.all
	end
end
