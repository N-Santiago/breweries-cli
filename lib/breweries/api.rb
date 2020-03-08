class Breweries::API
  
  def self.get_breweries
    @breweries_hash = HTTParty.get("https://api.openbrewerydb.org/breweries")
    breweries_obj = {
      name: @breweries_hash[0],
      city: @breweries_hash[3]
    }
     binding.pry 
   end 
  
end 