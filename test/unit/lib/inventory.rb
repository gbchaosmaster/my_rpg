# encoding : UTF-8

require 'inventory'
require 'item'

suite "Inventory" do
  test "Inventory.new" do
    wrench=Item.new('Wrench', 'An old iron wrench.  It has a light coat of rust.', 3, 2)
    inventory=Inventory.new(10)
    inventory.add_item(wrench)
    assert_equal inventory.size, 10
    assert_equal inventory.contents.include?(wrench), true
    inventory.remove_item(wrench)
    assert_equal inventory.contents.include?(wrench), false
  end
end


