#use this file to define a class that will represent a customer

class Customer
	attr_accessor :name, :money, :shopping_cart

	def initialize(name, money)
		#code here
		@name = name
		@money = money
		@shopping_cart = {}
	end

	def add_to_cart (store, item, quantity)
		#code here
		#"item" is a string, so we call that key to get the :quantity value
		if store.inventory["{item}"][:quantity] > quantity
			binding.pry
		#item comes from the method (add_to_cart)
		#shopping cart is a hash
		shopping_cart[item] = {price: store.inventory["{item}"][:price], quantity: quantity}
		store.decrease_item(item_name, quantity)
	else
		puts "We're sold out of #{item}"
		end

		
		#make sure to update how many items are in the store

		#What should happen if the store doesn't have enough?

		#update the shopping cart to show what the customer bought. 
		#Ex: @shopping_cart = { "banana" => {price: 1, quantity: 1} }
	end

	def checkout
		# binding.pry
		amount = []
		shopping_cart.each_value do |value|
			amount.push(item_amount) = vaule[:price] * value[:quantity]
		#each_value will take in all the values, .each will take both key and value
		#sum up the total cost of all items in the cart
		#decrease the customer's money
		#clear the shopping cart (now the items are in the customer's fridge!)
	end	
	amount.reduce



end