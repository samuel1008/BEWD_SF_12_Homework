#we make Album the parent, so we take the the methods and attr_accessor
class Playlist < Album

#we make another initialize to override the Album initialize
def initialize(title, song_list)
	@title = title
	@song_list = song_list
end

def self.help()
		puts "Playlists are created by the user."
		puts "You can add songs and remove them."
end

#def play and def shuffle method is brought over from the inhertiance (Album class)
#thus, we dont have to retype everything here


end
