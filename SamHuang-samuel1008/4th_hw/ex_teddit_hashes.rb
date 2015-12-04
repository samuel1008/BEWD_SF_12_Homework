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
  title = get_input #getting user input for title
  puts "Please give it a category:"
  category = get_input #getting user input for category
  upvotes = calculate_upvotes(title, category) #calculating upvotes
  puts "New story added! #{title.capitalize}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}" #puts it on display
  binding.pry
  stories.push(create_story_hash(title, category, upvotes)) #pushes create_story_hash method
  binding.pry
  stories # run the array of stories
end

def ask_again(stories)
  puts "Would you like to add another story?"
  answer = get_input # getting user input for adding another story
  if answer == "yes"
    binding.pry
   new_stories = add_to_teddit(stories) # array within an array, rerun stories array
   ask_again(new_stories) #ask_again method, loops new_stories which loops stories
  else #anything other than "yes"
    puts "thank you" #display "thank you"
     stories.each do |story| #stories will iterate the story hashes
      puts "New story added! #{story[:title].capitalize}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}"
     end #displays title, category, and upvotes
  end
end

stories = [] #stories into an empty array
binding.pry
new_stories_array = add_to_teddit(stories)
binding.pry
ask_again(new_stories_array)


  # puts "Would you like to add another story? Enter 'y' or 'n'"
  # your_answer == get_input.strip.downcase
  # until your_answer == "n"
  # puts "thank you"
  

