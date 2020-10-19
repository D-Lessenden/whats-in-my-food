class Food
  attr_reader :description, :brandOwner, :gtinUpc, :ingredients

  def initialize(attr)
    @description = attr[:description]
    @brandOwner = attr[:brandOwner]
    @gtinUpc = attr[:gtinUpc]
    @ingredients = attr[:ingredients]
  end
end
