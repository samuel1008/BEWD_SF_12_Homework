
class Album < Collection
	#properties: (title, song_list, artist, genre)
	attr_accessor :title, :song_list, :artist, :genre
	#when we see .new, we know it's initialize
	def initialize (title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
		
	end

	def self.help()
		puts "Albums are created by an artist. And they have a genre."
	end

# 	def play
# 		#CODE HERE
# 		#we want to go through each item in the array with .each
# 		@song_list.each do |song|
# 			puts "Playing song: #{song}"
# 		end
# 		#we're calling this method defined on line 37
# 		buy_album

		
# 	end
# #.shuffle was found on http://stackoverflow.com/questions/1816378/how-to-randomly-sort-scramble-an-array-in-ruby
# # we can string a long the methods: .shuffle.each 
# # this will shuffle each item in the array, then go through the play array with .each
# 	def shuffle ()
# 		#CODE HERE
# 		song_list.shuffle.each do |song|
# 			puts "Playing song: #{song}"
# 		end

# 	end
# #main line 110, we're pushing title into song_list
# 	def add_song(song_title)
# 		song_list.push(song_title)
# 	end
# #main line 119, we get .detele from the ruby docs
# 	def remove_song(song_title)
# 		@song_list.delete(song_title)
# 	end

# #main line 90
# 	def buy_album
# 		puts "Do you want to buy this #{title}?"
# 		answer = gets.chomp
# 		if answer == 'yes'
# 			puts "Great! thanks for buying #{title}"
# 		else 
# 			puts "Bummer..."
# 		end
# 	end


end