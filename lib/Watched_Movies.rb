require 'active_record'
class Watched_Movies < ActiveRecord::Base
belongs_to :user
belongs_to :movie
# @@all = []
#
#   def initialize(user,genre_input,runtime)
#     @user = user
#     @genre_input = genre_input
#     @runtime = runtime
#     self.class.all << self
#   end



end
