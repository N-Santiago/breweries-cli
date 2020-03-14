class Breweries::API
  
  def self.get_breweries(input)
    @breweries_hash = HTTParty.get("https://api.openbrewerydb.org/breweries?by_city=#{input}")
    breweries_obj = {
      name: @breweries_hash[1],
      city: @breweries_hash[4],
      phone: @breweries_hash[10],
      website: @breweries_hash[11] 
    }
    Breweries::HoppyCode.new(breweries_obj)
  end 
   
end 