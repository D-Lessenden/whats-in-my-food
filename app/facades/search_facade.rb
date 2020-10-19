class SearchFacade
  def self.conduct_search(search)
    # conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
    #   faraday.headers['API-Key'] = ENV['API-KEY']
    # end
    # response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['API-KEY']}&query=#{search}")
    # json = JSON.parse(response.body, symbolize_names: true)
    response = FoodService.fetch_results(search)
    @foods = response[:foods].first(10)

    @foods.map do |food_data|
      Food.new(food_data)
    end
  end

  def self.count_of_results(search)
    # conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
    #   faraday.headers['API-Key'] = ENV['API-KEY']
    # end
    # response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['API-KEY']}&query=#{search}")
    # @json = JSON.parse(response.body, symbolize_names: true)
    response = FoodService.fetch_results(search)
  end
end
