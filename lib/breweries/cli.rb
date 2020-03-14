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
    puts  "Please make a selection by index number for more information:"
        input = gets.strip.downcase
        if(input.to_i > 0)
            @brewery = @objects[input.to_i - 1]
            puts "name: #{@brewery.name}"
            puts "city: #{@brewery.city}"
            puts "phone: #{@obrewery.phone}"
            puts "website: #{@brewery.website_url}"
            display_info
        elsif (input == "quit")
            quit 
 end 
 
  
  def quit 
    puts "Goodbye. Drink responsibly and enjoy." 
  end   
  
end
