# encoding: utf-8

require 'battle'
require 'hero'

suite "Battle" do
  test "Battle.new" do
    hero = Hero.new("Alderan")
    dragon = Hero.new("Dragon")
    hero.hp= 2000
    dragon.block_chance=50
    dragon.block_value=3
    dragon.crit_chance=100
    dragon.crit_value=10
    dragon.hp = 10000
    battle = Battle.new(hero, dragon)
    assert_equal "Alderan", hero.name
    battle.fight
    assert_equal hero.alive?, false
  end
end

