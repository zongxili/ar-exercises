require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Karl", last_name: "Jensen", hourly_rate: 30)

@store1.employees.create(first_name: "Peter", last_name: "Parker", hourly_rate: 15)

@store2.employees.create(first_name: "Zongxi", last_name: "Li", hourly_rate: 100)

@store4.employees.create(first_name: "ChungHei", last_name: "Lee", hourly_rate: 100)