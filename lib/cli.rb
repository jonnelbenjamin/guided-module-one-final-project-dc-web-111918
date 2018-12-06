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
    puts "(Type 'quit' at any time to exit the application!)"

    user_name = STDIN.gets.strip.capitalize
    quit if user_name.downcase == 'quit'
    puts "Hello #{user_name}! How much free time do you have in minutes?"
    free_time = STDIN.gets.strip
      quit if free_time.downcase == 'quit'
    choose_movie(free_time)
    quit
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
    response = STDIN.gets.strip.downcase
      quit if response.downcase == 'quit'
    until response.downcase == "yes" || available_movies.length == 1
      available_movies.delete_at(0)
      puts "How about this one?"
      puts available_movies[0].title
      response = STDIN.gets.strip.downcase
        quit if response.downcase == 'quit'
      if available_movies.length == 2
        puts "Ok! One last movie suggestion! Please say yes!"
      end
    end # Ends the UNTIL loop
    if response == "yes"
      puts "Have fun! Don't spoil the ending!:)"
    else
      puts "You're too picky"
    end
  end

  def quit
    puts "Goodbye!"
    exit
  end




end #Closes out the class
