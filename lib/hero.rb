class Hero
	attr_accessor :hp, :helmet, :breastplate, :trousers, :gloves, :boots
	def initialize( name, hp=100, helmet=0, breastplate=0, trousers=0, gloves=0, boots=0 )
		@name = name
	end
	def hit(damage)
		hp -= damage
	end
	
	def hitpoints
		return hp
	end
	
	def alive?
		hp > 0
	end
	
	def armor_value
		return helmet + breastplate + trousers + helmet + boots + gloves
	end
	
end

josh=Hero.new(josh)

josh.helmet=17
puts josh.helmet
puts josh.armor_value

