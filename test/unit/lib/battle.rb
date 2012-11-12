require 'battle'

suite "Battle" do
  test "Battle.new" do
    hero = Hero.new("Alderan")
    assert_equal "Alderan", hero.name
    fight(hero, hero)
    assert_equal hero.alive?, false
    
  end
end

