class Hero
  attr_reader   :name
  attr_accessor :hp, :dam, :crit_chance, :block_chance, :block_value,
                :crit_value, :helmet, :breastplate, :trousers, :gloves,
                :boots

  def initialize(name)
    @name = name
    @hp = 100
    @helmet = 0
    @breastplate = 0
    @trousers = 0
    @gloves = 0
    @boots = 0
    @dam = 5
    @block_chance = 5
    @crit_chance = 5
    @crit_value = 2
    @block_value = 7
  end

  def block
    rand(101) <= @block_chance ? @block_value : 0
  end

  def crit
    rand(101) <= @crit_chance ? @crit_chance : 1
  end

  def take_physical_damage(damage, attacker)
    critical = attacker.crit
    blocked = block

    damage_taken = [critical * damage - blocked - armor_value, 0].max
    @hp -= damage_taken + armor_value

    [damage_taken, critical, blocked]
  end

  def fight_text(damage, attacker, defender)
    fight_array = defender.take_physical_damage(damage, attacker)

    if fight_array[0] == 0 && fight_array[2] == 0
      puts "\n#{attacker.name.capitalize} doesn't even scratch #{defender.name.capitalize}!"
    elsif fight_array[0] == 0 && fight_array[2] > 0
      puts "\n#{defender.name.capitalize} blocks all damage!"
    elsif fight_array[0] > 1 && fight_array[1] != 1
      puts "\n#{attacker.name.capitalize} **CRITS** #{defender.name.capitalize} for #{fight_array[0]}(#{fight_array[2]} Blocked)"
    elsif fight_array[0] > 0
      puts "\n#{attacker.name.capitalize} hits #{defender.name.capitalize} for #{fight_array[0]}(#{fight_array[2]} Blocked)"
    end
  end

  def hitpoints
    @hp
  end

  def alive?
    @hp > 0
  end

  def armor_value
    @helmet + @breastplate + @trousers + @gloves + @boots
  end

  def to_s
    "Name: #{@name}  Armor Value: #{armor_value} Hit Points: #{hp}"
  end
end
