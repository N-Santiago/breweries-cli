class Breweries::CLI
  
  #start should greet user 
  #pull data from API 
  #create custom objects
  #all inside start method 
  
  def start 
    puts "Hello there!"
    puts "Looking for the best craft beers in town, please wait." 
  end 
  
  def display_info 
    puts "Please enter location:"
    input = gets.strip.downcase
  end 
  
  #provide input instructions and/or examples
  #user input / location
  #answer user input. should provide breweries by location 
  #else - ask to try again 
  
  #exit command
  #if exit == "Goodbye, drink responsibly and enjoy."
  
end
