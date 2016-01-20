class MoviesWatched < ActiveRecord::Base
	belongs_to :users
	has_many :movies
end
