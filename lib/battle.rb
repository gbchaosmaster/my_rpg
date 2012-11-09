class Battle
  def fight(attacker, defender)
    while attacker.alive? && defender.alive?  
      if attacker.alive?
        puts "#{attacker.name} hits #{defender.name} for #{defender.got_hit(attacker.dam)}"
      else
      
      end
      if defender.alive?
        puts "#{defender.name} hits #{attacker.name} for #{attacker.got_hit(defender.dam)}"
      else

      end
    end   
    if attacker.alive?
      puts "#{defender.name.capitalize} has died." 
    else puts "#{attacker.name.capitalize} has died."
    end
  end
end
