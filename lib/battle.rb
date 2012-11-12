class Battle
  def fight(attacker, defender)
    while attacker.alive? && defender.alive?  
      if attacker.alive?
        fight_text(attacker.dam, attacker, defender)
      else
      
      end
      if defender.alive?
        fight_text(defender.dam, defender, attacker)
      else

      end
    end 
    if attacker.alive?
      puts "#{defender.name.capitalize} has died." 
    else puts "#{attacker.name.capitalize} has died."
    end
  end
end
