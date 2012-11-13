class Inventory
  attr_accessor :size, :contents

  def initialize(size=0)
    @size = size
    @contents = []
  end

  def add_item(item)
    @contents << item
    puts "#{item.name} added to inventory."
  end

  def remove_item(item)
    @contents.delete item
    puts "#{item.name} removed from inventory."
  end
end
