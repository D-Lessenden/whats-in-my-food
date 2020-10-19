require 'rails_helper'

describe "Welcome page" do
  it "has a search bar for foods" do
    visit '/'
    expect(page).to have_link('Search')
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
    expect(current_path).to eq('/foods')
    expect(page).to have_content("There are #{} results for your search!")
  end
end
