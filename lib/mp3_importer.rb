class MP3Importer 
  
  attr_accessor :path
  
  def initialize(path)
   @path = path
   #binding.pry
  end 
  
  def files 
    Dir.entries(path).reject {|f| f == "." || f == ".."}
  end  
  
  def import 
    files.each do |filename|  
      Song.new_by_filename(filename)
     end
  end  
   
end  