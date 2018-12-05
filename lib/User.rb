require 'active_record'
class User < ActiveRecord::Base
has_many :watched_movies
has_many :movies, through: :watched_movies
# attr_accessor :name, :free_time
# @@all = []
#
# def initialize(name, free_time)
#   @name = name
#   @free_time = free_time
#   self.class.all = self
# end





end
