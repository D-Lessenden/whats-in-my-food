require 'rails_helper'

describe FoodService do
  it 'fetches results' do

    search_results = FoodService.fetch_results("sweet potatoes")

    expect(search_results).to be_a(Hash)
    expect(search_results).to have_key :foods

    results = search_results[:foods]
    expect(results).to be_an(Array)

    next_result = results.first

    expect(next_result).to have_key :description
    expect(next_result[:description]).to be_a(String)

    expect(next_result).to have_key :brandOwner
    expect(next_result[:brandOwner]).to be_a(String)

    expect(next_result).to have_key :gtinUpc
    expect(next_result[:gtinUpc]).to be_a(String)

    expect(next_result).to have_key :ingredients
    expect(next_result[:ingredients]).to be_a(String)
  end
end
