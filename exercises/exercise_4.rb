require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |something| puts "#{something.name} #{something.annual_revenue}" }

# the way to do sql query in Active Record
@mens_stores = Store.where("annual_revenue < ? AND womens_apparel = ?",1000000, true)
@mens_stores.each { |store| puts "#{store.name} #{store.annual_revenue}"}