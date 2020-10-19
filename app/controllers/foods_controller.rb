class FoodsController < ApplicationController
  def index
    @foods = SearchFacade.conduct_search(params[:q])
    @json = SearchFacade.count_of_results(params[:q])
    # search = params[:q]
    # conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
    #   faraday.headers['API-Key'] = ENV['API-KEY']
    # end
    # response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['API-KEY']}&query=#{search}")
    # @json = JSON.parse(response.body, symbolize_names: true)
    # @foods = @json[:foods].first(10)
  end
end
