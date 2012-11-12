# encoding: utf-8
class Hero
  ##Hero info
  attr_reader   :name
  ##combat values
	attr_accessor :hp, :dam, :crit_chance, :block_chance, :block_value, :crit_value
	##Hero armor
	attr_accessor :helmet, :breastplate, :trousers, :gloves, :boots
	def initialize( name )
		@name                 = name
		@hp                   = 100
		@helmet               = 0
		@breastplate          = 0
		@trousers             = 0
		@gloves               = 0
		@boots                = 0
		@dam                  = 5
		@block_chance         = 5
		@crit_chance          = 5
		@crit_value           = 2
		@block_value          = 7
		end
	
	def block
	  if rand(101) <= @block_chance
     return @block_value
    else
     return 0
    end
  end
  
  def crit
    if rand(101) <= @crit_chance
  	  return crit_value
    else
      return 1
    end
  end
  
	def take_physical_damage(damage)
	  crit = self.crit
	  block = self.block
	  damage_taken = crit * damage
		damage_taken = ( damage - armor_value - block ) 
		if damage_taken >0 
		  @hp -= damage_taken 
		  return damage_taken, crit, block
		else
		  return 0, 1, 0
		end
	end
	
	def fight_text(damage, attacker, defender)
	  fight_array=defender.take_physical_damage(damage)
	  if fight_array[0] == 0 && fight_array[2] == 0
	    puts "#{attacker.name.capitalize} doesn't even scratch #{defender.name.capitalize}! #{fight_array}  "
	  elsif fight_array[0] == 0 && fight_array[2] > 0
	    puts "#{defender.name.capitalize} blocks all damage!(#{fight_array[2]} Blocked)"
	  elsif fight_array[0] > 1 && fight_array[1] > 1 && fight_array[2] > 0
	    puts "#{attacker.name.capitalize} **CRITS** #{defender.name.capitalize} for #{fight_array[0]}(#{fight_array[2]} Blocked)"
 
	  elsif fight_array[0] > 0 
	    puts "#{attacker.name.capitalize} hits #{defender.name.capitalize} for #{fight_array[0]}(#{fight_array[2]} Blocked)"	    
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





###current changes
#
#
#
#-------------------------------------------------------






