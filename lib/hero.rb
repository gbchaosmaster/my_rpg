# encoding: utf-8
class Hero
	attr_accessor :name, :hp, :helmet, :breastplate, :trousers, :gloves, :boots, :weapon
	def initialize( name, hp=100, helmet=0, breastplate=0, trousers=0, gloves=0, boots=0, weapon=20 )
		@name = name
		@hp = hp
		@helmet = helmet
		@breastplate = breastplate
		@trousers = trousers
		@gloves = gloves
		@boots = boots
		@weapon = weapon
		end
	def hit(damage, target)	
		target.hp -= damage-armor_value
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
	
end

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
	def hit(damage, target)
		target.hp -= damage-armor_value
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
	
	
	=begin
	def equip(item)
	if item
		self.#{item.slot}=item
		self.#{item.slot + 'av'}=item.av
	else
	
	end	
	
end

if __FILE__ == $0 then

	josh=Hero.new('josh')

	josh.helmet=17
	puts josh.helmet
	puts josh.armor_value
end

class Item
	attr_accessor :name, :words, :av, :damage, :capacity, :container, :weapon, :slot 
	def intialize( name, words=[''], type=:misc, av=0, damage=0, container=0, capacity=0, slot='')
		@name = name
		@words[] << words
		@av = av
		@damage = damage
		@capacity = capacity
		@container = container
		@slot= slot
	end
end

#Current changes:  Added item class


#-------------------------------------------------------

##To Do
##
## Create world/room structure
## create player command structure
##  most important commands atm >>[pickup/get, directions, drop, look,] equip, unequip etc
## create fight sequence and timing
## create OOC prompt
## create in combat prompt with health percentages




