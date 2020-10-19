class FoodService
  def self.fetch_results(search)
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.headers['API-Key'] = ENV['API-KEY']
    end
    response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['API-KEY']}&query=#{search}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
