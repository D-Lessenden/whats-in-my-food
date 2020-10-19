require 'rails_helper'

describe Food do
  it 'exists' do

    attr = {
        description: 'qwerty',
        brandOwner: 'ytrewq',
        gtinUpc: 'asdfg',
        ingredients: 'gfdsa'
    }

    food = Food.new(attr)

    expect(food).to be_a(Food)
    expect(food.description).to eq('qwerty')
    expect(food.brandOwner).to eq('ytrewq')
    expect(food.gtinUpc).to eq('asdfg')
    expect(food.ingredients).to eq('gfdsa')

  end
end
