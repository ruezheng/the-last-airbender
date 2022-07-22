class CharactersService

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/") do |faraday|
      faraday.params['api_key'] = ENV[nation_api_key]
    end
  end

  def self.get_characters(nation)
    require "pry"; binding.pry
    response = conn.get("characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
