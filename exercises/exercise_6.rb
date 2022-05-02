require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
store1 = Store.find_by(id: 1)
store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 15)
store1.employees.create(first_name: "Alice", last_name: "Doe", hourly_rate: 20)

store2 = Store.find_by(id: 2)
store2.employees.create(first_name: "Bob", last_name: "J", hourly_rate: 17)
store2.employees.create(first_name: "Jane", last_name: "B", hourly_rate: 25)