require 'active_record'
require 'pry'
class User < ActiveRecord::Base
has_many :watched_movies
has_many :movies, through: :watched_movies

def retrieve
  #Iterates through watched_movies table in
  #database and selects all matching user_ids.
  Watched_Movies.all.find_all {|movie| movie.user_id == self.id}
  #Puts titles to the console of a specific user's previously watched movies
end


end
