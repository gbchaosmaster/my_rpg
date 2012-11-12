# encoding: utf-8

require 'battle'
require 'hero'

suite "Battle" do
  test "Battle.new" do
    hero = Hero.new("Alderan")
    assert_equal "Alderan", hero.name
    Battle.fight(hero, hero)
    assert_equal hero.alive?, false
    
  end
end

