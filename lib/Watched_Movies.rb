class Watched_Movies

@@all = []

  def initialize(user,genre_input,runtime)
    @user = user
    @genre_input = genre_input
    @runtime = runtime
    self.class.all << self
  end



end
