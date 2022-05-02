require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

def print_loop (arr)
  arr.each do |item|
    puts "#{item.name}, #{item.annual_revenue}"
  end
end

mens_stores = Store.where(mens_apparel: true)
print_loop(mens_stores)

womens_stores = Store.where(womens_apparel: true, annual_revenue: ..1000000 )
print_loop(womens_stores)