class Breweries::CLI
  
  def start 
    puts "Hello there!"
    puts "Looking for the best craft beers in town, please wait." 
    display_info
  end 
  
  def display_info 
    puts "Please enter location:"
    input = gets.strip.downcase
    
    if input == "city"
      puts "************You'll love the following spots!************"
      puts "List of Breweries"
      display_info
    else 
      quit 
    end 
  end  
  
  def quit 
    puts "Goodbye. Drink responsibly and enjoy." 
  end 
  
end
