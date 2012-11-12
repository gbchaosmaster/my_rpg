# encoding: utf-8
class Hero
  ##Hero info
  attr_reader   :name
	attr_accessor :hp, :dam
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
		end
	def take_physical_damage(damage)	
		damage_taken = ( damage - armor_value ) 
		if damage_taken >=0 
		  @hp -= damage_taken 
		  return damage_taken
		else
		    return 0
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






