class User

attr_accessor :name, :free_time
@@all = []
def initialize(name, free_time)
  @name = name
  @free_time = free_time
  self.class.all = self
end



end
