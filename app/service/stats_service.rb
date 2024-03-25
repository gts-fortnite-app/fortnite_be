class StatsService 

  def self.conn
    conn = Faraday.new(url: "https://fortnite-api.com/v2/") do  |faraday|
      faraday.headers['Authorization'] = Rails.application.credentials.fortnite[:key]
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_player_stats_by_name(name)
    get_url("stats/br/v2?name=#{name}")
  end
end
