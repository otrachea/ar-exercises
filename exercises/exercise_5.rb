require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "Revenue for all storse: #{Store.all.sum(:annual_revenue)}"
puts "Average revenue for each store #{Store.all.average(:annual_revenue)}"
puts "Number of stores with revenue over $1M: #{Store.where(annual_revenue: 1000000..).count}"