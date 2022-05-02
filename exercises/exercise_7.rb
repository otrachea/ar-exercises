require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter store name: "
store = Store.create(name: gets.chomp, annual_revenue: 0, womens_apparel: true, mens_apparel: false)
puts store.errors.full_messages