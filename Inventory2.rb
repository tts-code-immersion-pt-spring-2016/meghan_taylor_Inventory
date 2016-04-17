#!/usr/bin/ruby

puts "The Olde Country Store Inventory"
puts "These are the items available:"

H ={"spare_axle" =>10, "spare_wagon_wheel" =>6, "spare_axle_tongue" =>5}

keys=H.keys
puts "#{keys}"
 
puts "What Item would you like to check quantity on?"
user_choice = gets.chomp
puts "#{H[user_choice]}"

puts "Enter item you would like to update the inventory quantity for?"
user_choice = gets.chomp

puts "Enter updated quantity"
inv_quantity= gets.chomp

H[user_choice] = inv_quantity

puts "#{H[user_choice]}"

puts "Enter the item you would like to delete:"
user_choice = gets.chomp

H.delete(user_choice)

puts "Here is the updated inventory list:"
keys= H.keys
puts "#{keys}"

puts "Which item would you like to rename?:"
user_choice = gets.chomp

puts "What would you like to rename to:"
user_rename = gets.chomp
H[user_rename] = H.delete user_choice

puts "Here is the updated inventory list:"
keys= H.keys
puts "#{keys}"

puts "Please add new item to list:"
new_choice = gets.chomp
H[new_choice] = H.delete user_choice


