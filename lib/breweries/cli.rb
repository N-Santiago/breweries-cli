class Breweries::CLI
  
  def start 
    puts "Hello!"
    puts "---------------------------"
    puts "Please enter your location:"
    input = gets.strip.downcase
    @data = Breweries::API.get_breweries(input)
    @objects = Breweries::HoppyCode.all 
    if input.length < 1 
      puts "Sorry!!" 
      puts "```````"
      start
  else 
    display_info 
  end
  end 
   
  def display_info 
    puts "You'll love the following spots!"
    puts "********************************"
    @objects.each.with_index(1) {|brewery, index| puts "#{index}. #{brewery.name}"}  
    puts  "Please make a selection by index number for more information:"
    puts  "**********************************"
    puts  "Type Quit to end."
    puts  "**********************************"
    puts  "Type Menu to try another location."
    puts  "**********************************"
        input = gets.strip.downcase
        if(input.to_i > 0)
            @brewery = @objects[input.to_i - 1]
            puts "name: #{@brewery.name}"
            puts "street: #{@brewery.street}"
            puts "city: #{@brewery.city}"
            puts "phone: #{@brewery.phone}"
            puts "website_url: #{@brewery.website_url}"
            display_info
          elsif (input == "quit")
            quit 
          elsif (input == "menu")
          start
      else 
      puts "Ooops, please try again to get more info:"
        display_info
      end 
      end 
 
  def quit 
    puts "Goodbye. Drink responsibly and enjoy." 
  end   
  
end
