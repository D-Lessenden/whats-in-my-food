require 'rails_helper'

describe "Welcome page" do
  it "has a search bar for foods" do
    visit '/'
    expect(page).to have_link('Search')
    fill_in :q, with: "sweet potatoes"
    click_on "Search"
    expect(current_path).to eq('/foods')
    expect(page).to have_content("There are 50 results for your search!")
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: The Pictsweet Company")
    expect(page).to have_content("GTIN/UPC: 070560951975")
    expect(page).to have_content("Ingredients: SWEET POTATOES.")
  end
end
