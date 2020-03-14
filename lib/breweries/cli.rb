class Breweries::CLI
  
  def start 
    puts "Hello!"
    puts "------"
    puts "Please enter your location"
    input = gets.strip.downcase
    @data = Breweries::API.get_breweries(input)
    @objects = Breweries::HoppyCode.all 
  end 
  
  def quit 
    puts "Goodbye. Drink responsibly and enjoy." 
  end   
  
end
