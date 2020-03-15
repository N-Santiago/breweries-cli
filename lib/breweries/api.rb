class Breweries::API
  
  def self.get_breweries(input)
    @breweries_hash = HTTParty.get("https://api.openbrewerydb.org/breweries?by_city=#{input}")
    breweries_obj = {
      name: @breweries_hash[1]["name"],
      street: @breweries_hash[3]["street"],
      city: @breweries_hash[4]["city"],
      phone: @breweries_hash[10]["phone"],
      website_url: @breweries_hash[11]["website_url"]
    }
    Breweries::HoppyCode.new(breweries_obj)
  end 
   
end 