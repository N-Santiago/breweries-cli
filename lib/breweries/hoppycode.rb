class Breweries::HoppyCode
  
  attr_accessor :name, :city 
  
  @@all = []
 
  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    save
  end 
  
  def self.all
    @@all
  end

  def save
    @@all << []
    binding.pry 
  end   
  
end  
