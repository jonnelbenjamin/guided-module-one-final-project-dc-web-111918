class Movie
attr_accessor :name, :genre, :runtime

@@all = []
def initialize(name, genre, runtime)
@name = name
@genre = genre
@runtime = runtime
self.class.all << self
end



end
