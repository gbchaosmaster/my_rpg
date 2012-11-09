# encoding: utf-8

require 'hero'

suite "Hero" do
  test "Hero.new" do
    hero = Hero.new("Alderan")
    assert_equal "Alderan", hero.name
    hero.hit(100, hero)
    assert_equal hero.alive?, false
  end
end
