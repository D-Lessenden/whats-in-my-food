class FoodsController < ApplicationController
  def index
    search = params[:q]
    conn = Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.headers['API-Key'] = ENV['API-KEY']
    end
    response = conn.get("https://api.nal.usda.gov/fdc/v1/foods/search?api_key=#{ENV['API-KEY']}&query=#{search}")
    @json = JSON.parse(response.body, symbolize_names: true)
    # binding.pry
  end
end
