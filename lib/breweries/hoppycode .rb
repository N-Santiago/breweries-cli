class Breweries::HoppyCode 
   attr_accessor :name, :city
  
  @@all = []
 
  def initialize
    @name = name 
    @@all << self
  end
 
  def self.all
    @@all
  end
  
end  

