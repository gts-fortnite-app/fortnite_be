class ItemShopService

  def self.conn
    conn = Faraday.new(url: "https://fortnite-api.com/v2")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_itemshop
    get_url("/shop/br")
  end
end