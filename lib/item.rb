# encoding: utf-8
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
