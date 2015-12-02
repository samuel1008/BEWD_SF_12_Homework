# Step 1: Working with Arrays and Hashes
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#

require 'pry'
def get_input
  gets.strip
end

def calculate_upvotes(story, category)
  upvotes = 1

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *= 8
  end

  if category.downcase == "food"
    upvotes *= 3
  end

  upvotes
end

def create_story_hash(title, category, upvotes)
#we want to take in the title, category, and upvotes and turn it into a hash
story = {:title => title, :category => category, :upvotes => upvotes}
end

def add_to_teddit(stories)
  puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
  puts "Please enter a News story:"
  title = get_input
  puts "Please give it a category:"
  category = get_input
  upvotes = calculate_upvotes(title, category)
  puts "New story added! #{title.capitalize}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
  stories.push(create_story_hash(title, category, upvotes))
  stories
end

def ask_again(stories)
  puts "Would you like to add another story?"
  answer = get_input
  if answer == "yes"
   new_stories = add_to_teddit(stories)
   ask_again(new_stories)
  else
    puts "thank you"
     stories.each do |story|
      puts "New story added! #{story[:title].capitalize}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}"
     end
  end
end

stories = []
new_stories_array = add_to_teddit(stories)
ask_again(new_stories_array)


  # puts "Would you like to add another story? Enter 'y' or 'n'"
  # your_answer == get_input.strip.downcase
  # until your_answer == "n"
  # puts "thank you"
  

