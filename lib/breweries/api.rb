class Breweries::API
  
  def self.get_breweries
    @breweries_hash = HTTParty.get("https://api.openbrewerydb.org/breweries?by_name=#{name}")
    breweries_obj = {
      name: @breweries_hash[1],
      city: @breweries_hash[4]
    }
     binding.pry 
   end 
  
end 