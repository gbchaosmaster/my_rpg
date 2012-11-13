class Item
  attr_accessor :cost, :name, :description, :size

  def initialize(name, description = "", cost = 0, size = 0)
  	@name = name
  	@description = description
  	@cost = cost
    @size = size
  end
end
