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
    # search_for_movie(free_time)
    choose_movie(free_time)
  end

  def search_for_movie(free_time)
    free_time = free_time.to_i
    desired_movies = Movie.all.select{|movie| movie.runtime <= free_time}
    return desired_movies
  end #search_for_movie end

  def choose_movie(free_time)
    available_movies = search_for_movie(free_time)
    puts available_movies[0].title
    puts "How does this sound?"
    puts "Respond with Yes or No"
    response = gets.strip
    if response.downcase == "no"
      available_movies.delete_at(0)
      puts "How about this one?"
      puts available_movies[0].title
    elsif response.downcase == "yes"
      puts "Have fun! Don't spoil the ending!:)"
    else
      puts "You're too picky!"
    end
    # binding.pry
  end





end
