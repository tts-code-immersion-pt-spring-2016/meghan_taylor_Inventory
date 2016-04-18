#!/usr/bin/ruby

puts "The Olde Country Store Inventory"
puts "These are the items available:"

H ={"spare_axle" =>10, "spare_wagon_wheel" =>6, "spare_axle_tongue" =>5}
## shows items in inventory
keys=H.keys
puts "#{keys}"

##checks quantity of inventory
puts "What Item would you like to check quantity on?"
user_choice = gets.chomp
puts "#{H[user_choice]}"

##updates quantity of item
puts "Enter item you would like to update the inventory quantity for?"
user_choice = gets.chomp

##updated number
puts "Enter updated quantity"
inv_quantity= gets.chomp

H[user_choice] = inv_quantity

puts "#{H[user_choice]}"

## deletes item
puts "Enter the item you would like to delete:"
user_choice = gets.chomp

H.delete(user_choice)
##updated inventory
puts "Here is the updated inventory list:"
keys= H.keys
puts "#{keys}"

##chooses item to rename
puts "Which item would you like to rename?:"
user_choice = gets.chomp

##add renamed object
puts "What would you like to rename to:"
user_rename = gets.chomp
H[user_rename] = H.delete user_choice

##updated name
puts "Here is the updated inventory list:"
keys= H.keys
puts "#{keys}"

##adding new item
puts "Please add new item to list:"
new_choice = gets.chomp

## add new quantity
puts "Please add inventory quantity:" 
new_quant = gets.chomp

H[new_choice] = [new_quant.to_i]

puts "Here is the updated inventory list:"
H.each {|k, v| print k, " ", v, "\n"}



 


