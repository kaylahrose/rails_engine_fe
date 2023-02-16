class MerchantService
  def self.conn
    response = conn.get('merchants')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "http://localhost:3000/")
  end
end