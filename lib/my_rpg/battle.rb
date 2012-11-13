class Battle
  def initialize(attacker, defender)
    @attacker = attacker
    @defender = defender
  end

  def fight
    while @attacker.alive? && @defender.alive?
      if @attacker.alive?
        @attacker.fight_text(@attacker.dam, @attacker, @defender)
      end

      if @defender.alive?
        @defender.fight_text(@defender.dam, @defender, @attacker)
      end
    end

    if @attacker.alive?
      puts "#{@defender.name.capitalize} has died."
    elsif @defender.alive?
      puts "#{@attacker.name.capitalize} has died."
    end
  end
end
