class Breweries::CLI
  
  def start 
    puts "Hello!"
    puts "------"
    puts "Please enter your location"
    input = gets.strip.downcase
    @data = Breweries::API.get_breweries(input)
    @objects = Breweries::HoppyCode.all 
    display_info
  end 
  
  def display_info 
    puts "You'll love the following spots!"
    puts "********************************"
    @objects.each.with_index(1) {|brewery, index| puts "#{index}. #{brewery.name}"}  
 end 
 
  
  def quit 
    puts "Goodbye. Drink responsibly and enjoy." 
  end   
  
end
