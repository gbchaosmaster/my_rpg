# encoding : UTF-8

require 'item'

suite "Item" do
  test "Item.new" do
    item=Item.new('Wrench', 'An old iron wrench.  It has a light coat of rust.', 3, 2)
    
    assert_equal item.name, 'Wrench'
    assert_equal item.description, 'An old iron wrench.  It has a light coat of rust.'
    assert_equal item.cost, 3
    assert_equal item.size, 2
    puts item
  end
end


