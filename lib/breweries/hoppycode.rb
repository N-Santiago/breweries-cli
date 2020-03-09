class Breweries::HoppyCode
  
<<<<<<< HEAD
  attr_accessor :name, :city 
  
  @@all = []
 
  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    save
=======
  @@all = []
 
  def initialize(hash)
    
    binding.pry 
>>>>>>> 7ea98e6f7d6bc47fdb329af5b98e279691b18a3c
  end
 
  def self.all
    @@all
  end
  
<<<<<<< HEAD
  def save
    @@all << []
    binding.pry 
  end  
  
=======
>>>>>>> 7ea98e6f7d6bc47fdb329af5b98e279691b18a3c
end  
