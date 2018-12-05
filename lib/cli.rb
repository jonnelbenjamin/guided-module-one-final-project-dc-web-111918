require 'pry'
class CLI

attr_accessor :runtime

def call
  self.start
end

#------Starts our application and asks for user's name and available free time
#------Then based on free time, application searches for movie
def start
  puts "Hello! What is your name?"
  user_name = gets.strip.capitalize
  puts "Hello #{user_name}! How much free time do you have in minutes?"

  free_time = gets.strip
  search_for_movie(free_time)
end

def search_for_movie(free_time)
  available_movies = []
  free_time = free_time.to_i
  desired_movies = Movie.all.select{|movie| movie.runtime <= free_time}
  available_movies << desired_movies
  puts available_movies.flatten[0].title
end
#search_for_movie end

# def choose_movie
#   puts "How does this sound?"
#   puts "Respond with Yes or No!"
#   response = gets.strip
#   if response.downcase == "yes"
#   puts "Have fun! Don't spoil the ending!:)"
# else available_movies.flatten.delete.first
#   puts "How about this one?"
#   puts available_movies.flatten[0].title
#   binding.pry
# end
# end





end
