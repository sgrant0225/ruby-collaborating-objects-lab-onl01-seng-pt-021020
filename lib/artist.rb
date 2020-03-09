require 'pry'

class Artist 

attr_accessor :name, :songs
 @@all = []

 def initialize(name)
   @name = name
   @@all << self
   @songs = []
 end

 def self.all 
   @@all
 end 

 def add_song(song)
   @songs << song
 end  

 def self.find(name)  
    self.all.detect do |artist| 
      artist.name == name 
  end
 end  
 
 def self.find_or_create_by_name(name)
  #the return value of the method will be an instance of an artist with the name attribute filled out.
    self.find(name) ? self.find(name) : self.new(name)
 end
 
 def print_songs
  @songs.each do |s| 
   puts s.name
  end
 end  

end  