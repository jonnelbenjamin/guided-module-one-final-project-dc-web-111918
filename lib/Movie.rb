require 'active_record'
class Movie < ActiveRecord::Base
# attr_accessor :name, :genre, :runtime
has_many :watched_movies
has_many :users, through: :watched_movies

# @@all = []
# def initialize(name, genre, runtime)
# @name = name
# @genre = genre
# @runtime = runtime
# self.class.all << self
# end



end
