require 'pry'
require 'active_record'
class Movie < ActiveRecord::Base
has_many :watched_movies
has_many :users, through: :watched_movies


def search_for_movie(free_time)
  # free_time = free_time.to_i
  Movie.all
  binding.pry
end

end
