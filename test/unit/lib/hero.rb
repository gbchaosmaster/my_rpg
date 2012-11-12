# encoding: utf-8

require 'hero'

suite "Hero" do
  test "Hero.new" do
    hero = Hero.new("Alderan")
    assert_equal "Alderan", hero.name
    hero.take_physical_damage(100)
    assert_equal hero.alive?, false
  end
end
