require 'rails_helper'

describe 'Search Facade' do
  it 'returns first 10 of a list of search results' do
    search = "sweet potatoes"

    @foods = SearchFacade.conduct_search(search)

    expect(@foods).to be_an(Array)
    expect(@foods.first[:description]).to be_an(String)
  end
end
