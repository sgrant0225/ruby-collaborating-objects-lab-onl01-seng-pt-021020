require 'pry'

class Song 
attr_accessor :name, :artist
 @@all = []
 
 def initialize(name)
  @name = name
  @@all << self
 end  

  def self.all
    @@all
  end

# The next method self.new_by_filename will send the the song class and creattion of song instances and artist instances to the #import method
 
 def self.new_by_filename(file_name) 
    binding.pry
 end

end