#url - https://rapidapi.com/brianiswu/api/open-brewery-db?endpoint=5c4b9deee4b08cf00f3fbde4 

class Breweries::API 
  
  def self.get_breweries
    @breweries_hash = Unirest.get("https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweriesq")
    binding.pry 
  end 
  
end 