class Breweries::HoppyCode 
   
  
  @@all = []
 
  def initialize
    @name = name 
    @@all << self
  end
 
  def self.all
    @@all
  end
  
end  

