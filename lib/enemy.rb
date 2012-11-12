# encoding: utf-8
class Enemy
	attr_accessor :name, :hp, :helmetav, :breastplateav, :trousersav, :glovesav, :bootsav, :weapondam
attr_accessor :helm, :breast, :trouser, :glove, :boot, :weapon
	def initialize( name, hp=100, helmetav=0, breastplateav=0, trousersav=0, glovesav=0, bootsav=0, weapondam=20 )
		@name = name
		@hp = hp
		@helmetav = helmet
		@breastplateav = breastplate
		@trousersav = trousers
		@glovesav = gloves
		@bootsav = boots
		@weaponav = weapon
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
		hp
	end
	
	def alive?
		hp > 0
	end
	
	def armor_value
		helmet.to_i + breastplate.to_i + trousers.to_i + boots.to_i + gloves.to_i
	end
	
	def to_s
		"Name: #{@name}  Armor Value: #{armor_value} Hit Points: #{hp}"
	end
	
	
	
	def equip(item)
	if item
		self.#{item.slot}=item
		self.#{item.slot + 'av'}=item.av
		else
		
		end		
	end
end
