class Breweries::HoppyCode
  attr_accessor :city, :name 
  
  @@all = []
 
  def initialize
    @city = city
    @name = name 
    @@all << self
  end
 
  def self.all
    @@all
  end
  
end  

