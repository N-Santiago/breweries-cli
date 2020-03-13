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
<<<<<<< HEAD
  end   
=======
  end  
>>>>>>> e8170f54660be55a0ad2211ee42c479c1491835d
  
end  
