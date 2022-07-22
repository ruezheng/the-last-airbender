class NationService

  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
  end

  def self.get_characters(nation)
    response = conn.get("characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
